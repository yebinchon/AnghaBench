; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_hpilo.c_ilo_pkt_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_hpilo.c_ilo_pkt_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ilo_hwinfo = type { i32 }
%struct.ccb = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@SENDQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ilo_hwinfo*, %struct.ccb*, i32, i32*, i32*, i8**)* @ilo_pkt_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilo_pkt_dequeue(%struct.ilo_hwinfo* %0, %struct.ccb* %1, i32 %2, i32* %3, i32* %4, i8** %5) #0 {
  %7 = alloca %struct.ilo_hwinfo*, align 8
  %8 = alloca %struct.ccb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ilo_hwinfo* %0, %struct.ilo_hwinfo** %7, align 8
  store %struct.ccb* %1, %struct.ccb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8** %5, i8*** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SENDQ, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %6
  %22 = load %struct.ccb*, %struct.ccb** %8, align 8
  %23 = getelementptr inbounds %struct.ccb, %struct.ccb* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %13, align 8
  %26 = load %struct.ccb*, %struct.ccb** %8, align 8
  %27 = getelementptr inbounds %struct.ccb, %struct.ccb* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %14, align 8
  br label %39

30:                                               ; preds = %6
  %31 = load %struct.ccb*, %struct.ccb** %8, align 8
  %32 = getelementptr inbounds %struct.ccb, %struct.ccb* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %13, align 8
  %35 = load %struct.ccb*, %struct.ccb** %8, align 8
  %36 = getelementptr inbounds %struct.ccb, %struct.ccb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %14, align 8
  br label %39

39:                                               ; preds = %30, %21
  %40 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %7, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @fifo_dequeue(%struct.ilo_hwinfo* %40, i8* %41, i32* %15)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %39
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @get_entry_id(i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %16, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32*, i32** %11, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @get_entry_len(i32 %57)
  %59 = load i32*, i32** %11, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i8**, i8*** %12, align 8
  %62 = icmp ne i8** %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i8*, i8** %14, align 8
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @desc_mem_sz(i32 %65)
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8**, i8*** %12, align 8
  store i8* %68, i8** %69, align 8
  br label %70

70:                                               ; preds = %63, %60
  br label %71

71:                                               ; preds = %70, %39
  %72 = load i32, i32* %17, align 4
  ret i32 %72
}

declare dso_local i32 @fifo_dequeue(%struct.ilo_hwinfo*, i8*, i32*) #1

declare dso_local i32 @get_entry_id(i32) #1

declare dso_local i32 @get_entry_len(i32) #1

declare dso_local i32 @desc_mem_sz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
