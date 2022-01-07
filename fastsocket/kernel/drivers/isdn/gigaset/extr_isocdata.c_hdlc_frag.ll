; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_isocdata.c_hdlc_frag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_isocdata.c_hdlc_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i32, %struct.TYPE_6__*, i32*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"received partial byte (%d bits)\0A\00", align 1
@SBUFSIZE = common dso_local global i64 0, align 8
@HW_HDR_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"could not allocate skb\0A\00", align 1
@PPP_INITFCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_state*, i32)* @hdlc_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_frag(%struct.bc_state* %0, i32 %1) #0 {
  %3 = alloca %struct.bc_state*, align 8
  %4 = alloca i32, align 4
  store %struct.bc_state* %0, %struct.bc_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %6 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %12 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 8
  %15 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %16 = call i32 @hdlc_flush(%struct.bc_state* %15)
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %19 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dev_notice(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %26 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %33 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %36 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %39 = call i32 @gigaset_rcv_error(i32* %34, %struct.TYPE_6__* %37, %struct.bc_state* %38)
  %40 = load i64, i64* @SBUFSIZE, align 8
  %41 = load i64, i64* @HW_HDR_LEN, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32* @dev_alloc_skb(i64 %42)
  %44 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %45 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = icmp ne i32* %43, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %17
  %48 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %49 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @HW_HDR_LEN, align 8
  %52 = call i32 @skb_reserve(i32* %50, i64 %51)
  br label %60

53:                                               ; preds = %17
  %54 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %55 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %53, %47
  %61 = load i32, i32* @PPP_INITFCS, align 4
  %62 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %63 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hdlc_flush(%struct.bc_state*) #1

declare dso_local i32 @dev_notice(i32, i8*, i32) #1

declare dso_local i32 @gigaset_rcv_error(i32*, %struct.TYPE_6__*, %struct.bc_state*) #1

declare dso_local i32* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
