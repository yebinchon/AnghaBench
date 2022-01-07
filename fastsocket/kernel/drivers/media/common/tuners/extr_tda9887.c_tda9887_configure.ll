; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda9887.c_tda9887_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda9887.c_tda9887_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda9887_priv* }
%struct.tda9887_priv = type { i32*, i32, i64 }

@cOutputPort1Inactive = common dso_local global i32 0, align 4
@cOutputPort2Inactive = common dso_local global i32 0, align 4
@cForcedMuteAudioON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"writing: b=0x%02x c=0x%02x e=0x%02x\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 4)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @tda9887_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda9887_configure(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda9887_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.tda9887_priv*, %struct.tda9887_priv** %6, align 8
  store %struct.tda9887_priv* %7, %struct.tda9887_priv** %3, align 8
  %8 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %9 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @memset(i32* %10, i32 0, i32 8)
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %13 = call i32 @tda9887_set_tvnorm(%struct.dvb_frontend* %12)
  %14 = load i32, i32* @cOutputPort1Inactive, align 4
  %15 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %16 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %14
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @cOutputPort2Inactive, align 4
  %22 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %23 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %21
  store i32 %27, i32* %25, align 4
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %29 = call i32 @tda9887_do_config(%struct.dvb_frontend* %28)
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %31 = call i32 @tda9887_set_insmod(%struct.dvb_frontend* %30)
  %32 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %33 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %1
  %37 = load i32, i32* @cForcedMuteAudioON, align 4
  %38 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %39 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %36, %1
  %45 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %46 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %51 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %56 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @tuner_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %54, i32 %59)
  %61 = load i32, i32* @debug, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %69

63:                                               ; preds = %44
  %64 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %65 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %66 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @dump_write_message(%struct.dvb_frontend* %64, i32* %67)
  br label %69

69:                                               ; preds = %63, %44
  %70 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %71 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %70, i32 0, i32 1
  %72 = load %struct.tda9887_priv*, %struct.tda9887_priv** %3, align 8
  %73 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @tuner_i2c_xfer_send(i32* %71, i32* %74, i32 4)
  store i32 %75, i32* %4, align 4
  %76 = icmp ne i32 4, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @tuner_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %69
  %81 = load i32, i32* @debug, align 4
  %82 = icmp sgt i32 %81, 2
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = call i32 @msleep_interruptible(i32 1000)
  %85 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %86 = call i32 @tda9887_status(%struct.dvb_frontend* %85)
  br label %87

87:                                               ; preds = %83, %80
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @tda9887_set_tvnorm(%struct.dvb_frontend*) #1

declare dso_local i32 @tda9887_do_config(%struct.dvb_frontend*) #1

declare dso_local i32 @tda9887_set_insmod(%struct.dvb_frontend*) #1

declare dso_local i32 @tuner_dbg(i8*, i32, i32, i32) #1

declare dso_local i32 @dump_write_message(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i32*, i32) #1

declare dso_local i32 @tuner_info(i8*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @tda9887_status(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
