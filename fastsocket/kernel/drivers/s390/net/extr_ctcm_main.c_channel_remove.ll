; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_channel_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_channel_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { %struct.channel*, %struct.channel*, %struct.channel*, %struct.channel*, i32, i32, i32*, i32, i32, i32, i32 }

@channels = common dso_local global %struct.channel* null, align 8
@CTCM_ID_SIZE = common dso_local global i32 0, align 4
@SETUP = common dso_local global i32 0, align 4
@CTC_DBF_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s(%s) %s\00", align 1
@CTCM_FUNTAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel*)* @channel_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_remove(%struct.channel* %0) #0 {
  %2 = alloca %struct.channel*, align 8
  %3 = alloca %struct.channel**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.channel* %0, %struct.channel** %2, align 8
  store %struct.channel** @channels, %struct.channel*** %3, align 8
  %8 = load i32, i32* @CTCM_ID_SIZE, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.channel*, %struct.channel** %2, align 8
  %14 = icmp eq %struct.channel* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %112

16:                                               ; preds = %1
  %17 = load %struct.channel*, %struct.channel** %2, align 8
  %18 = getelementptr inbounds %struct.channel, %struct.channel* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CTCM_ID_SIZE, align 4
  %21 = call i32 @strncpy(i8* %12, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %16
  %23 = load %struct.channel*, %struct.channel** %2, align 8
  %24 = call i32 @channel_free(%struct.channel* %23)
  br label %25

25:                                               ; preds = %99, %22
  %26 = load %struct.channel**, %struct.channel*** %3, align 8
  %27 = load %struct.channel*, %struct.channel** %26, align 8
  %28 = icmp ne %struct.channel* %27, null
  br i1 %28, label %29, label %103

29:                                               ; preds = %25
  %30 = load %struct.channel**, %struct.channel*** %3, align 8
  %31 = load %struct.channel*, %struct.channel** %30, align 8
  %32 = load %struct.channel*, %struct.channel** %2, align 8
  %33 = icmp eq %struct.channel* %31, %32
  br i1 %33, label %34, label %99

34:                                               ; preds = %29
  %35 = load %struct.channel*, %struct.channel** %2, align 8
  %36 = getelementptr inbounds %struct.channel, %struct.channel* %35, i32 0, i32 0
  %37 = load %struct.channel*, %struct.channel** %36, align 8
  %38 = load %struct.channel**, %struct.channel*** %3, align 8
  store %struct.channel* %37, %struct.channel** %38, align 8
  %39 = load %struct.channel*, %struct.channel** %2, align 8
  %40 = getelementptr inbounds %struct.channel, %struct.channel* %39, i32 0, i32 9
  %41 = call i32 @fsm_deltimer(i32* %40)
  %42 = load %struct.channel*, %struct.channel** %2, align 8
  %43 = call i64 @IS_MPC(%struct.channel* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load %struct.channel*, %struct.channel** %2, align 8
  %47 = getelementptr inbounds %struct.channel, %struct.channel* %46, i32 0, i32 8
  %48 = call i32 @fsm_deltimer(i32* %47)
  br label %49

49:                                               ; preds = %45, %34
  %50 = load %struct.channel*, %struct.channel** %2, align 8
  %51 = getelementptr inbounds %struct.channel, %struct.channel* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @kfree_fsm(i32 %52)
  %54 = load %struct.channel*, %struct.channel** %2, align 8
  %55 = getelementptr inbounds %struct.channel, %struct.channel* %54, i32 0, i32 2
  %56 = load %struct.channel*, %struct.channel** %55, align 8
  %57 = getelementptr inbounds %struct.channel, %struct.channel* %56, i64 4
  %58 = call i32 @clear_normalized_cda(%struct.channel* %57)
  %59 = load %struct.channel*, %struct.channel** %2, align 8
  %60 = getelementptr inbounds %struct.channel, %struct.channel* %59, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %49
  %64 = load %struct.channel*, %struct.channel** %2, align 8
  %65 = getelementptr inbounds %struct.channel, %struct.channel* %64, i32 0, i32 2
  %66 = load %struct.channel*, %struct.channel** %65, align 8
  %67 = getelementptr inbounds %struct.channel, %struct.channel* %66, i64 1
  %68 = call i32 @clear_normalized_cda(%struct.channel* %67)
  %69 = load %struct.channel*, %struct.channel** %2, align 8
  %70 = getelementptr inbounds %struct.channel, %struct.channel* %69, i32 0, i32 6
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @dev_kfree_skb_any(i32* %71)
  br label %73

73:                                               ; preds = %63, %49
  %74 = load %struct.channel*, %struct.channel** %2, align 8
  %75 = call i64 @IS_MPC(%struct.channel* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load %struct.channel*, %struct.channel** %2, align 8
  %79 = getelementptr inbounds %struct.channel, %struct.channel* %78, i32 0, i32 5
  %80 = call i32 @tasklet_kill(i32* %79)
  %81 = load %struct.channel*, %struct.channel** %2, align 8
  %82 = getelementptr inbounds %struct.channel, %struct.channel* %81, i32 0, i32 4
  %83 = call i32 @tasklet_kill(i32* %82)
  %84 = load %struct.channel*, %struct.channel** %2, align 8
  %85 = getelementptr inbounds %struct.channel, %struct.channel* %84, i32 0, i32 3
  %86 = load %struct.channel*, %struct.channel** %85, align 8
  %87 = call i32 @kfree(%struct.channel* %86)
  br label %88

88:                                               ; preds = %77, %73
  %89 = load %struct.channel*, %struct.channel** %2, align 8
  %90 = getelementptr inbounds %struct.channel, %struct.channel* %89, i32 0, i32 2
  %91 = load %struct.channel*, %struct.channel** %90, align 8
  %92 = call i32 @kfree(%struct.channel* %91)
  %93 = load %struct.channel*, %struct.channel** %2, align 8
  %94 = getelementptr inbounds %struct.channel, %struct.channel* %93, i32 0, i32 1
  %95 = load %struct.channel*, %struct.channel** %94, align 8
  %96 = call i32 @kfree(%struct.channel* %95)
  %97 = load %struct.channel*, %struct.channel** %2, align 8
  %98 = call i32 @kfree(%struct.channel* %97)
  store i32 1, i32* %6, align 4
  br label %103

99:                                               ; preds = %29
  %100 = load %struct.channel**, %struct.channel*** %3, align 8
  %101 = load %struct.channel*, %struct.channel** %100, align 8
  %102 = getelementptr inbounds %struct.channel, %struct.channel* %101, i32 0, i32 0
  store %struct.channel** %102, %struct.channel*** %3, align 8
  br label %25

103:                                              ; preds = %88, %25
  %104 = load i32, i32* @SETUP, align 4
  %105 = load i32, i32* @CTC_DBF_INFO, align 4
  %106 = load i32, i32* @CTCM_FUNTAIL, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %111 = call i32 @CTCM_DBF_TEXT_(i32 %104, i32 %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %106, i8* %12, i8* %110)
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %103, %15
  %113 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %7, align 4
  switch i32 %114, label %116 [
    i32 0, label %115
    i32 1, label %115
  ]

115:                                              ; preds = %112, %112
  ret void

116:                                              ; preds = %112
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncpy(i8*, i32, i32) #2

declare dso_local i32 @channel_free(%struct.channel*) #2

declare dso_local i32 @fsm_deltimer(i32*) #2

declare dso_local i64 @IS_MPC(%struct.channel*) #2

declare dso_local i32 @kfree_fsm(i32) #2

declare dso_local i32 @clear_normalized_cda(%struct.channel*) #2

declare dso_local i32 @dev_kfree_skb_any(i32*) #2

declare dso_local i32 @tasklet_kill(i32*) #2

declare dso_local i32 @kfree(%struct.channel*) #2

declare dso_local i32 @CTCM_DBF_TEXT_(i32, i32, i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
