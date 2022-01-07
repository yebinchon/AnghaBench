; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst_ca.c_dst_ci_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst_ca.c_dst_ci_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }

@verbose = common dso_local global i32 0, align 4
@DST_CA_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c" Write not successful, trying to recover\00", align 1
@DST_CA_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c" DST PIO disable failed.\00", align 1
@GET_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c" Read not successful, trying to recover\00", align 1
@LONG_DELAY = common dso_local global i32 0, align 4
@DST_CA_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c" 8820 not ready\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, i32*, i32*, i32, i32)* @dst_ci_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_ci_command(%struct.dst_state* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dst_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %14 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %17 = call i32 @dst_comm_init(%struct.dst_state* %16)
  %18 = call i32 @msleep(i32 65)
  %19 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @write_dst(%struct.dst_state* %19, i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i32, i32* @verbose, align 4
  %26 = load i32, i32* @DST_CA_INFO, align 4
  %27 = call i32 @dprintk(i32 %25, i32 %26, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %29 = call i32 @dst_error_recovery(%struct.dst_state* %28)
  br label %77

30:                                               ; preds = %5
  %31 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %32 = call i64 @dst_pio_disable(%struct.dst_state* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @verbose, align 4
  %36 = load i32, i32* @DST_CA_ERROR, align 4
  %37 = call i32 @dprintk(i32 %35, i32 %36, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %77

38:                                               ; preds = %30
  %39 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %40 = load i32, i32* @GET_ACK, align 4
  %41 = call i64 @read_dst(%struct.dst_state* %39, i32* %12, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @verbose, align 4
  %45 = load i32, i32* @DST_CA_INFO, align 4
  %46 = call i32 @dprintk(i32 %44, i32 %45, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %48 = call i32 @dst_error_recovery(%struct.dst_state* %47)
  br label %77

49:                                               ; preds = %38
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %49
  %53 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %54 = load i32, i32* @LONG_DELAY, align 4
  %55 = call i32 @dst_wait_dst_ready(%struct.dst_state* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @verbose, align 4
  %59 = load i32, i32* @DST_CA_NOTICE, align 4
  %60 = call i32 @dprintk(i32 %58, i32 %59, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %77

61:                                               ; preds = %52
  %62 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i64 @read_dst(%struct.dst_state* %62, i32* %63, i32 128)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @verbose, align 4
  %68 = load i32, i32* @DST_CA_INFO, align 4
  %69 = call i32 @dprintk(i32 %67, i32 %68, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %71 = call i32 @dst_error_recovery(%struct.dst_state* %70)
  br label %77

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %49
  %74 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %75 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  store i32 0, i32* %6, align 4
  br label %83

77:                                               ; preds = %66, %57, %43, %34, %24
  %78 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %79 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %77, %73
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dst_comm_init(%struct.dst_state*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @write_dst(%struct.dst_state*, i32*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i32 @dst_error_recovery(%struct.dst_state*) #1

declare dso_local i64 @dst_pio_disable(%struct.dst_state*) #1

declare dso_local i64 @read_dst(%struct.dst_state*, i32*, i32) #1

declare dso_local i32 @dst_wait_dst_ready(%struct.dst_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
