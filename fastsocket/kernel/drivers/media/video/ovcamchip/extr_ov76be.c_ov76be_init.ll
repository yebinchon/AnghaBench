; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov76be.c_ov76be_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov76be.c_ov76be_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ovcamchip = type { %struct.ov76be* }
%struct.ov76be = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@regvals_init_76be = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov76be_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov76be_init(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ovcamchip*, align 8
  %5 = alloca %struct.ov76be*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.ovcamchip* %8, %struct.ovcamchip** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call i32 @DDEBUG(i32 4, i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %13 = load i32, i32* @regvals_init_76be, align 4
  %14 = call i32 @ov_write_regvals(%struct.i2c_client* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ov76be* @kzalloc(i32 8, i32 %20)
  store %struct.ov76be* %21, %struct.ov76be** %5, align 8
  %22 = load %struct.ovcamchip*, %struct.ovcamchip** %4, align 8
  %23 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %22, i32 0, i32 0
  store %struct.ov76be* %21, %struct.ov76be** %23, align 8
  %24 = load %struct.ov76be*, %struct.ov76be** %5, align 8
  %25 = icmp ne %struct.ov76be* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %19
  %30 = load %struct.ov76be*, %struct.ov76be** %5, align 8
  %31 = getelementptr inbounds %struct.ov76be, %struct.ov76be* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.ov76be*, %struct.ov76be** %5, align 8
  %33 = getelementptr inbounds %struct.ov76be, %struct.ov76be* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %26, %17
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.ovcamchip* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @DDEBUG(i32, i32*, i8*) #1

declare dso_local i32 @ov_write_regvals(%struct.i2c_client*, i32) #1

declare dso_local %struct.ov76be* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
