; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_adbhid.c_init_trackpad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_adbhid.c_init_trackpad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32, i32* }

@.str = private unnamed_addr constant [12 x i8] c" (trackpad)\00", align 1
@ADBREQ_SYNC = common dso_local global i32 0, align 4
@ADBREQ_REPLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"bad length for reg. 1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @init_trackpad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_trackpad(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adb_request, align 8
  %4 = alloca [8 x i8], align 1
  store i32 %0, i32* %2, align 4
  %5 = call i32 @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @ADBREQ_SYNC, align 4
  %7 = load i32, i32* @ADBREQ_REPLY, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @ADB_READREG(i32 %9, i32 1)
  %11 = call i32 (%struct.adb_request*, i32*, i32, i32, i32, ...) @adb_request(%struct.adb_request* %3, i32* null, i32 %8, i32 1, i32 %10)
  %12 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %81

17:                                               ; preds = %1
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %19 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %3, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = call i32 @memcpy(i8* %18, i32* %21, i32 8)
  %23 = load i32, i32* @ADBREQ_SYNC, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @ADB_WRITEREG(i32 %24, i32 1)
  %26 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 4
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 5
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 7
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = call i32 (%struct.adb_request*, i32*, i32, i32, i32, ...) @adb_request(%struct.adb_request* %3, i32* null, i32 %23, i32 9, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40, i32 %43, i32 13, i32 %46)
  %48 = load i32, i32* @ADBREQ_SYNC, align 4
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @ADB_WRITEREG(i32 %49, i32 2)
  %51 = call i32 (%struct.adb_request*, i32*, i32, i32, i32, ...) @adb_request(%struct.adb_request* %3, i32* null, i32 %48, i32 9, i32 %50, i32 153, i32 148, i32 25, i32 255, i32 178, i32 138, i32 27, i32 80)
  %52 = load i32, i32* @ADBREQ_SYNC, align 4
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @ADB_WRITEREG(i32 %53, i32 1)
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 3
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 4
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 5
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 7
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = call i32 (%struct.adb_request*, i32*, i32, i32, i32, ...) @adb_request(%struct.adb_request* %3, i32* null, i32 %52, i32 9, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 3, i32 %75)
  %77 = load i32, i32* @ADBREQ_SYNC, align 4
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @ADB_FLUSH(i32 %78)
  %80 = call i32 (%struct.adb_request*, i32*, i32, i32, i32, ...) @adb_request(%struct.adb_request* %3, i32* null, i32 %77, i32 1, i32 %79)
  br label %81

81:                                               ; preds = %17, %15
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @adb_request(%struct.adb_request*, i32*, i32, i32, i32, ...) #1

declare dso_local i32 @ADB_READREG(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @ADB_WRITEREG(i32, i32) #1

declare dso_local i32 @ADB_FLUSH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
