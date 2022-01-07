; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_start_cbsend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_start_cbsend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, %struct.cmdbuf_t*, i32, %struct.TYPE_2__ }
%struct.cmdbuf_t = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.bas_cardstate* }
%struct.bas_cardstate = type { i32, i64 }

@BS_SUSPEND = common dso_local global i32 0, align 4
@DEBUG_TRANSCMD = common dso_local global i32 0, align 4
@DEBUG_LOCKCMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"suspending\00", align 1
@EHOSTUNREACH = common dso_local global i32 0, align 4
@BS_ATOPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"AT channel not open\00", align 1
@HD_OPEN_ATCHANNEL = common dso_local global i32 0, align 4
@BAS_TIMEOUT = common dso_local global i32 0, align 4
@BS_ATREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*)* @start_cbsend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_cbsend(%struct.cardstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca %struct.cmdbuf_t*, align 8
  %5 = alloca %struct.bas_cardstate*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  %9 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %10 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.bas_cardstate*, %struct.bas_cardstate** %11, align 8
  store %struct.bas_cardstate* %12, %struct.bas_cardstate** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.bas_cardstate*, %struct.bas_cardstate** %5, align 8
  %14 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BS_SUSPEND, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @DEBUG_TRANSCMD, align 4
  %21 = load i32, i32* @DEBUG_LOCKCMD, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @gig_dbg(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EHOSTUNREACH, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %110

26:                                               ; preds = %1
  %27 = load %struct.bas_cardstate*, %struct.bas_cardstate** %5, align 8
  %28 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BS_ATOPEN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %66, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @DEBUG_TRANSCMD, align 4
  %35 = load i32, i32* @DEBUG_LOCKCMD, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @gig_dbg(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %39 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @HD_OPEN_ATCHANNEL, align 4
  %42 = load i32, i32* @BAS_TIMEOUT, align 4
  %43 = call i32 @req_submit(i32 %40, i32 %41, i32 0, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %33
  %47 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %48 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %47, i32 0, i32 0
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %56, %46
  %52 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %53 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %52, i32 0, i32 1
  %54 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %53, align 8
  %55 = icmp ne %struct.cmdbuf_t* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %58 = call i32 @complete_cb(%struct.cardstate* %57)
  br label %51

59:                                               ; preds = %51
  %60 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %61 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %60, i32 0, i32 0
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %59, %33
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %110

66:                                               ; preds = %26
  %67 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %68 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %67, i32 0, i32 0
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  br label %71

71:                                               ; preds = %103, %66
  %72 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %73 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %72, i32 0, i32 1
  %74 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %73, align 8
  store %struct.cmdbuf_t* %74, %struct.cmdbuf_t** %4, align 8
  %75 = icmp ne %struct.cmdbuf_t* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.bas_cardstate*, %struct.bas_cardstate** %5, align 8
  %78 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @BS_ATREADY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br label %83

83:                                               ; preds = %76, %71
  %84 = phi i1 [ false, %71 ], [ %82, %76 ]
  br i1 %84, label %85, label %104

85:                                               ; preds = %83
  %86 = load %struct.bas_cardstate*, %struct.bas_cardstate** %5, align 8
  %87 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %89 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %90 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cmdbuf_t*, %struct.cmdbuf_t** %4, align 8
  %93 = getelementptr inbounds %struct.cmdbuf_t, %struct.cmdbuf_t* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @atwrite_submit(%struct.cardstate* %88, i32 %91, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %85
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %8, align 4
  %101 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %102 = call i32 @complete_cb(%struct.cardstate* %101)
  br label %103

103:                                              ; preds = %99, %85
  br label %71

104:                                              ; preds = %83
  %105 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %106 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %105, i32 0, i32 0
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %104, %64, %19
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @gig_dbg(i32, i8*) #1

declare dso_local i32 @req_submit(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @complete_cb(%struct.cardstate*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atwrite_submit(%struct.cardstate*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
