; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_isr_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_isr_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@OP_TX_STOP = common dso_local global i32 0, align 4
@OP_TX_FIRST = common dso_local global i32 0, align 4
@OP_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_i2c_data*)* @sh_mobile_i2c_isr_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_isr_tx(%struct.sh_mobile_i2c_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_mobile_i2c_data*, align 8
  %4 = alloca i8, align 1
  store %struct.sh_mobile_i2c_data* %0, %struct.sh_mobile_i2c_data** %3, align 8
  %5 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %6 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %9 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %7, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %17 = call i32 @sh_mobile_i2c_get_data(%struct.sh_mobile_i2c_data* %16, i8* %4)
  %18 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %19 = call i64 @sh_mobile_i2c_is_last_byte(%struct.sh_mobile_i2c_data* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %23 = load i32, i32* @OP_TX_STOP, align 4
  %24 = load i8, i8* %4, align 1
  %25 = call i32 @i2c_op(%struct.sh_mobile_i2c_data* %22, i32 %23, i8 zeroext %24)
  br label %41

26:                                               ; preds = %15
  %27 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %28 = call i64 @sh_mobile_i2c_is_first_byte(%struct.sh_mobile_i2c_data* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %32 = load i32, i32* @OP_TX_FIRST, align 4
  %33 = load i8, i8* %4, align 1
  %34 = call i32 @i2c_op(%struct.sh_mobile_i2c_data* %31, i32 %32, i8 zeroext %33)
  br label %40

35:                                               ; preds = %26
  %36 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %37 = load i32, i32* @OP_TX, align 4
  %38 = load i8, i8* %4, align 1
  %39 = call i32 @i2c_op(%struct.sh_mobile_i2c_data* %36, i32 %37, i8 zeroext %38)
  br label %40

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40, %21
  %42 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %3, align 8
  %43 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %14
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @sh_mobile_i2c_get_data(%struct.sh_mobile_i2c_data*, i8*) #1

declare dso_local i64 @sh_mobile_i2c_is_last_byte(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @i2c_op(%struct.sh_mobile_i2c_data*, i32, i8 zeroext) #1

declare dso_local i64 @sh_mobile_i2c_is_first_byte(%struct.sh_mobile_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
