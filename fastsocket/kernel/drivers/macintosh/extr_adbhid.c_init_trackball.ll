; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_adbhid.c_init_trackball.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_adbhid.c_init_trackball.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c" (trackman/mouseman)\00", align 1
@ADBREQ_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @init_trackball to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_trackball(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adb_request, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @ADBREQ_SYNC, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @ADB_WRITEREG(i32 %6, i32 1)
  %8 = call i32 @adb_request(%struct.adb_request* %3, i32* null, i32 %5, i32 3, i32 %7, i32 0, i32 129)
  %9 = load i32, i32* @ADBREQ_SYNC, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @ADB_WRITEREG(i32 %10, i32 1)
  %12 = call i32 @adb_request(%struct.adb_request* %3, i32* null, i32 %9, i32 3, i32 %11, i32 1, i32 129)
  %13 = load i32, i32* @ADBREQ_SYNC, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @ADB_WRITEREG(i32 %14, i32 1)
  %16 = call i32 @adb_request(%struct.adb_request* %3, i32* null, i32 %13, i32 3, i32 %15, i32 2, i32 129)
  %17 = load i32, i32* @ADBREQ_SYNC, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @ADB_WRITEREG(i32 %18, i32 1)
  %20 = call i32 @adb_request(%struct.adb_request* %3, i32* null, i32 %17, i32 3, i32 %19, i32 3, i32 56)
  %21 = load i32, i32* @ADBREQ_SYNC, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @ADB_WRITEREG(i32 %22, i32 1)
  %24 = call i32 @adb_request(%struct.adb_request* %3, i32* null, i32 %21, i32 3, i32 %23, i32 0, i32 129)
  %25 = load i32, i32* @ADBREQ_SYNC, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @ADB_WRITEREG(i32 %26, i32 1)
  %28 = call i32 @adb_request(%struct.adb_request* %3, i32* null, i32 %25, i32 3, i32 %27, i32 1, i32 129)
  %29 = load i32, i32* @ADBREQ_SYNC, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @ADB_WRITEREG(i32 %30, i32 1)
  %32 = call i32 @adb_request(%struct.adb_request* %3, i32* null, i32 %29, i32 3, i32 %31, i32 2, i32 129)
  %33 = load i32, i32* @ADBREQ_SYNC, align 4
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @ADB_WRITEREG(i32 %34, i32 1)
  %36 = call i32 @adb_request(%struct.adb_request* %3, i32* null, i32 %33, i32 3, i32 %35, i32 3, i32 56)
  ret void
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @adb_request(%struct.adb_request*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADB_WRITEREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
