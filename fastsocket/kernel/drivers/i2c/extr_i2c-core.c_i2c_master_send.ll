; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_master_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_master_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i8*, i32 }

@I2C_M_TEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_master_send(%struct.i2c_client* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca %struct.i2c_msg, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %8, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i32 %15, i32* %16, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @I2C_M_TEN, align 4
  %21 = and i32 %19, %20
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %28 = call i32 @i2c_transfer(%struct.i2c_adapter* %27, %struct.i2c_msg* %9, i32 1)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  br label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  ret i32 %36
}

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
