; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_sgi_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_sgi_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.i2c_algo_sgi_data* }
%struct.i2c_algo_sgi_data = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @sgi_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgi_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_algo_sgi_data*, align 8
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %11, i32 0, i32 0
  %13 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %12, align 8
  store %struct.i2c_algo_sgi_data* %13, %struct.i2c_algo_sgi_data** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %72, %3
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %75

23:                                               ; preds = %21
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i64 %26
  store %struct.i2c_msg* %27, %struct.i2c_msg** %8, align 8
  %28 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %7, align 8
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @I2C_M_RD, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @do_address(%struct.i2c_algo_sgi_data* %28, i32 %31, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %23
  %41 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40, %23
  br label %72

46:                                               ; preds = %40
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @I2C_M_RD, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %7, align 8
  %55 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @i2c_read(%struct.i2c_algo_sgi_data* %54, i32 %57, i32 %60)
  store i32 %61, i32* %10, align 4
  br label %71

62:                                               ; preds = %46
  %63 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %7, align 8
  %64 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @i2c_write(%struct.i2c_algo_sgi_data* %63, i32 %66, i32 %69)
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %62, %53
  br label %72

72:                                               ; preds = %71, %45
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %14

75:                                               ; preds = %21
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  br label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  ret i32 %83
}

declare dso_local i32 @do_address(%struct.i2c_algo_sgi_data*, i32, i32) #1

declare dso_local i32 @i2c_read(%struct.i2c_algo_sgi_data*, i32, i32) #1

declare dso_local i32 @i2c_write(%struct.i2c_algo_sgi_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
