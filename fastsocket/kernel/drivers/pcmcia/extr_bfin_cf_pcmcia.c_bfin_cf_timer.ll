; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_bfin_cf_pcmcia.c_bfin_cf_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_bfin_cf_pcmcia.c_bfin_cf_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfin_cf_socket = type { i16, i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c": card %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gone\00", align 1
@SS_DETECT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@POLL_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bfin_cf_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_cf_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bfin_cf_socket*, align 8
  %4 = alloca i16, align 2
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.bfin_cf_socket*
  store %struct.bfin_cf_socket* %7, %struct.bfin_cf_socket** %3, align 8
  %8 = load %struct.bfin_cf_socket*, %struct.bfin_cf_socket** %3, align 8
  %9 = getelementptr inbounds %struct.bfin_cf_socket, %struct.bfin_cf_socket* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call zeroext i16 @bfin_cf_present(i32 %10)
  store i16 %11, i16* %4, align 2
  %12 = load i16, i16* %4, align 2
  %13 = zext i16 %12 to i32
  %14 = load %struct.bfin_cf_socket*, %struct.bfin_cf_socket** %3, align 8
  %15 = getelementptr inbounds %struct.bfin_cf_socket, %struct.bfin_cf_socket* %14, i32 0, i32 0
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = icmp ne i32 %13, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %1
  %20 = load i16, i16* %4, align 2
  %21 = load %struct.bfin_cf_socket*, %struct.bfin_cf_socket** %3, align 8
  %22 = getelementptr inbounds %struct.bfin_cf_socket, %struct.bfin_cf_socket* %21, i32 0, i32 0
  store i16 %20, i16* %22, align 8
  %23 = load %struct.bfin_cf_socket*, %struct.bfin_cf_socket** %3, align 8
  %24 = getelementptr inbounds %struct.bfin_cf_socket, %struct.bfin_cf_socket* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i16, i16* %4, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.bfin_cf_socket*, %struct.bfin_cf_socket** %3, align 8
  %34 = getelementptr inbounds %struct.bfin_cf_socket, %struct.bfin_cf_socket* %33, i32 0, i32 3
  %35 = load i32, i32* @SS_DETECT, align 4
  %36 = call i32 @pcmcia_parse_events(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %19, %1
  %38 = load %struct.bfin_cf_socket*, %struct.bfin_cf_socket** %3, align 8
  %39 = getelementptr inbounds %struct.bfin_cf_socket, %struct.bfin_cf_socket* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.bfin_cf_socket*, %struct.bfin_cf_socket** %3, align 8
  %44 = getelementptr inbounds %struct.bfin_cf_socket, %struct.bfin_cf_socket* %43, i32 0, i32 1
  %45 = load i64, i64* @jiffies, align 8
  %46 = load i64, i64* @POLL_INTERVAL, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @mod_timer(i32* %44, i64 %47)
  br label %49

49:                                               ; preds = %42, %37
  ret void
}

declare dso_local zeroext i16 @bfin_cf_present(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

declare dso_local i32 @pcmcia_parse_events(i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
