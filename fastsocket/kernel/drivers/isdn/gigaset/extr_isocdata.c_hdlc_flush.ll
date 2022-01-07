; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_isocdata.c_hdlc_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_isocdata.c_hdlc_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i32, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@SBUFSIZE = common dso_local global i64 0, align 8
@HW_HDR_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"could not allocate skb\0A\00", align 1
@PPP_INITFCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_state*)* @hdlc_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_flush(%struct.bc_state* %0) #0 {
  %2 = alloca %struct.bc_state*, align 8
  store %struct.bc_state* %0, %struct.bc_state** %2, align 8
  %3 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %4 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i64 @likely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %12 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @skb_trim(i32* %13, i32 0)
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %17 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %15
  %21 = load i64, i64* @SBUFSIZE, align 8
  %22 = load i64, i64* @HW_HDR_LEN, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32* @dev_alloc_skb(i64 %23)
  %25 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %26 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = icmp ne i32* %24, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %30 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @HW_HDR_LEN, align 8
  %33 = call i32 @skb_reserve(i32* %31, i64 %32)
  br label %41

34:                                               ; preds = %20
  %35 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %36 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %34, %28
  br label %42

42:                                               ; preds = %41, %15
  br label %43

43:                                               ; preds = %42, %10
  %44 = load i32, i32* @PPP_INITFCS, align 4
  %45 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %46 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_trim(i32*, i32) #1

declare dso_local i32* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
