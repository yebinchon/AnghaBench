; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_isr_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_isr_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }

@OP_TX_FIRST = common dso_local global i32 0, align 4
@OP_TX = common dso_local global i32 0, align 4
@OP_TX_TO_RX = common dso_local global i32 0, align 4
@OP_RX_STOP = common dso_local global i32 0, align 4
@OP_RX_STOP_DATA = common dso_local global i32 0, align 4
@OP_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_i2c_data*)* @sh_mobile_i2c_isr_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_isr_rx(%struct.sh_mobile_i2c_data* %0) #0 {
  %2 = alloca %struct.sh_mobile_i2c_data*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.sh_mobile_i2c_data* %0, %struct.sh_mobile_i2c_data** %2, align 8
  br label %5

5:                                                ; preds = %1
  %6 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %7 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sle i32 %8, -1
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %12 = call i32 @sh_mobile_i2c_get_data(%struct.sh_mobile_i2c_data* %11, i8* %3)
  %13 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %14 = call i64 @sh_mobile_i2c_is_first_byte(%struct.sh_mobile_i2c_data* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %18 = load i32, i32* @OP_TX_FIRST, align 4
  %19 = load i8, i8* %3, align 1
  %20 = call zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data* %17, i32 %18, i8 zeroext %19)
  br label %26

21:                                               ; preds = %10
  %22 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %23 = load i32, i32* @OP_TX, align 4
  %24 = load i8, i8* %3, align 1
  %25 = call zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data* %22, i32 %23, i8 zeroext %24)
  br label %26

26:                                               ; preds = %21, %16
  br label %79

27:                                               ; preds = %5
  %28 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %29 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %34 = load i32, i32* @OP_TX_TO_RX, align 4
  %35 = call zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data* %33, i32 %34, i8 zeroext 0)
  br label %79

36:                                               ; preds = %27
  %37 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %38 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 2
  store i32 %40, i32* %4, align 4
  %41 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %42 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %45 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %43, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %36
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %55 = load i32, i32* @OP_RX_STOP, align 4
  %56 = call zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data* %54, i32 %55, i8 zeroext 0)
  br label %79

57:                                               ; preds = %50
  %58 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %59 = load i32, i32* @OP_RX_STOP_DATA, align 4
  %60 = call zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data* %58, i32 %59, i8 zeroext 0)
  store i8 %60, i8* %3, align 1
  br label %65

61:                                               ; preds = %36
  %62 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %63 = load i32, i32* @OP_RX, align 4
  %64 = call zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data* %62, i32 %63, i8 zeroext 0)
  store i8 %64, i8* %3, align 1
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %4, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i8, i8* %3, align 1
  %70 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %71 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 %69, i8* %77, align 1
  br label %78

78:                                               ; preds = %68, %65
  br label %79

79:                                               ; preds = %78, %53, %32, %26
  %80 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %81 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %85 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %2, align 8
  %88 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 2
  %93 = icmp eq i32 %86, %92
  %94 = zext i1 %93 to i32
  ret i32 %94
}

declare dso_local i32 @sh_mobile_i2c_get_data(%struct.sh_mobile_i2c_data*, i8*) #1

declare dso_local i64 @sh_mobile_i2c_is_first_byte(%struct.sh_mobile_i2c_data*) #1

declare dso_local zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
