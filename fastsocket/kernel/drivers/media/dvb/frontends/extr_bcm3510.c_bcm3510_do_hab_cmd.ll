; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_do_hab_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_do_hab_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm3510_state = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"hab snd: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"hab get: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm3510_state*, i32, i32, i32*, i32, i32*, i32)* @bcm3510_do_hab_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcm3510_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.bcm3510_state* %0, %struct.bcm3510_state** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* %13, align 4
  %22 = add nsw i32 %21, 2
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %16, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %17, align 8
  %26 = load i32, i32* %15, align 4
  %27 = add nsw i32 %26, 2
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %30 = load i32, i32* %10, align 4
  %31 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %30, i32* %31, align 16
  %32 = load i32, i32* %11, align 4
  %33 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds i32, i32* %25, i64 2
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @memcpy(i32* %34, i32* %35, i32 %36)
  %38 = call i32 @deb_hab(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 2
  %41 = call i32 @dbufout(i32* %25, i32 %40, i32 (i8*)* @deb_hab)
  %42 = call i32 @deb_hab(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.bcm3510_state*, %struct.bcm3510_state** %9, align 8
  %44 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %43, i32 0, i32 0
  %45 = call i64 @mutex_lock_interruptible(i32* %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %7
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %78

50:                                               ; preds = %7
  %51 = load %struct.bcm3510_state*, %struct.bcm3510_state** %9, align 8
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 2
  %54 = call i32 @bcm3510_hab_send_request(%struct.bcm3510_state* %51, i32* %25, i32 %53)
  store i32 %54, i32* %19, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.bcm3510_state*, %struct.bcm3510_state** %9, align 8
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 2
  %60 = call i32 @bcm3510_hab_get_response(%struct.bcm3510_state* %57, i32* %29, i32 %59)
  store i32 %60, i32* %19, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56, %50
  br label %73

63:                                               ; preds = %56
  %64 = call i32 @deb_hab(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 2
  %67 = call i32 @dbufout(i32* %29, i32 %66, i32 (i8*)* @deb_hab)
  %68 = call i32 @deb_hab(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32*, i32** %14, align 8
  %70 = getelementptr inbounds i32, i32* %29, i64 2
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @memcpy(i32* %69, i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %63, %62
  %74 = load %struct.bcm3510_state*, %struct.bcm3510_state** %9, align 8
  %75 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %19, align 4
  store i32 %77, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %78

78:                                               ; preds = %73, %47
  %79 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @deb_hab(i8*) #2

declare dso_local i32 @dbufout(i32*, i32, i32 (i8*)*) #2

declare dso_local i64 @mutex_lock_interruptible(i32*) #2

declare dso_local i32 @bcm3510_hab_send_request(%struct.bcm3510_state*, i32*, i32) #2

declare dso_local i32 @bcm3510_hab_get_response(%struct.bcm3510_state*, i32*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
