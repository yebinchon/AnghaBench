; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.bcm3510_state*, i32 }
%struct.bcm3510_state = type { %struct.dvb_frontend, i32, %struct.i2c_adapter*, %struct.bcm3510_config* }
%struct.bcm3510_config = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@bcm3510_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Revision: 0x%1x, Layer: 0x%1x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Revision: 0x%1x, Layer: 0x%1x.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @bcm3510_attach(%struct.bcm3510_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.bcm3510_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.bcm3510_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  store %struct.bcm3510_config* %0, %struct.bcm3510_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.bcm3510_state* null, %struct.bcm3510_state** %6, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.bcm3510_state* @kzalloc(i32 40, i32 %9)
  store %struct.bcm3510_state* %10, %struct.bcm3510_state** %6, align 8
  %11 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %12 = icmp eq %struct.bcm3510_state* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %76

14:                                               ; preds = %2
  %15 = load %struct.bcm3510_config*, %struct.bcm3510_config** %4, align 8
  %16 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %17 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %16, i32 0, i32 3
  store %struct.bcm3510_config* %15, %struct.bcm3510_config** %17, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %19 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %20 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %19, i32 0, i32 2
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %20, align 8
  %21 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %22 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 1
  %24 = call i32 @memcpy(i32* %23, i32* @bcm3510_ops, i32 4)
  %25 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %26 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %27 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 0
  store %struct.bcm3510_state* %25, %struct.bcm3510_state** %28, align 8
  %29 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %30 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %29, i32 0, i32 1
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %33 = call i32 @bcm3510_readB(%struct.bcm3510_state* %32, i32 224, %struct.TYPE_5__* %8)
  store i32 %33, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %14
  br label %76

36:                                               ; preds = %14
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @deb_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %64

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 11
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 8
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %76

64:                                               ; preds = %58, %53, %48, %36
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %73 = call i32 @bcm3510_reset(%struct.bcm3510_state* %72)
  %74 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %75 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %74, i32 0, i32 0
  store %struct.dvb_frontend* %75, %struct.dvb_frontend** %3, align 8
  br label %79

76:                                               ; preds = %63, %35, %13
  %77 = load %struct.bcm3510_state*, %struct.bcm3510_state** %6, align 8
  %78 = call i32 @kfree(%struct.bcm3510_state* %77)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %79

79:                                               ; preds = %76, %64
  %80 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %80
}

declare dso_local %struct.bcm3510_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @bcm3510_readB(%struct.bcm3510_state*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @deb_info(i8*, i32, i32) #1

declare dso_local i32 @info(i8*, i32, i32) #1

declare dso_local i32 @bcm3510_reset(%struct.bcm3510_state*) #1

declare dso_local i32 @kfree(%struct.bcm3510_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
