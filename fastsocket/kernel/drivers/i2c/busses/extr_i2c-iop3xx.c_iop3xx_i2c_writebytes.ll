; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_writebytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_writebytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.i2c_algo_iop3xx_data* }
%struct.i2c_algo_iop3xx_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i8*, i32)* @iop3xx_i2c_writebytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop3xx_i2c_writebytes(%struct.i2c_adapter* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_algo_iop3xx_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 0
  %12 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %11, align 8
  store %struct.i2c_algo_iop3xx_data* %12, %struct.i2c_algo_iop3xx_data** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %35, %3
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %17, %18
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %22, label %38

22:                                               ; preds = %20
  %23 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp eq i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @iop3xx_i2c_write_byte(%struct.i2c_algo_iop3xx_data* %23, i8 signext %28, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %13

38:                                               ; preds = %20
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local i32 @iop3xx_i2c_write_byte(%struct.i2c_algo_iop3xx_data*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
