; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_initbcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_initbcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i32, i32, i32*, i32**, i64, i64, i64, %struct.cardstate*, i32, i32, i64, i32, i64, i64, i64, i32, i32* }
%struct.cardstate = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 (%struct.bc_state*)* }

@DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"setting up bcs[%d]->at_state\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"allocating bcs[%d]->skb\00", align 1
@PPP_INITFCS = common dso_local global i32 0, align 4
@INS_skip_frame = common dso_local global i32 0, align 4
@SBUFSIZE = common dso_local global i64 0, align 8
@HW_HDR_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@AT_NUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"  setting up bcs[%d]->hw\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"  failed\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"  freeing bcs[%d]->skb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bc_state* (%struct.bc_state*, %struct.cardstate*, i32)* @gigaset_initbcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bc_state* @gigaset_initbcs(%struct.bc_state* %0, %struct.cardstate* %1, i32 %2) #0 {
  %4 = alloca %struct.bc_state*, align 8
  %5 = alloca %struct.bc_state*, align 8
  %6 = alloca %struct.cardstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bc_state* %0, %struct.bc_state** %5, align 8
  store %struct.cardstate* %1, %struct.cardstate** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %10 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %9, i32 0, i32 16
  store i32* null, i32** %10, align 8
  %11 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %12 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %11, i32 0, i32 15
  %13 = call i32 @skb_queue_head_init(i32* %12)
  %14 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %15 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %14, i32 0, i32 14
  store i64 0, i64* %15, align 8
  %16 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %17 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %16, i32 0, i32 13
  store i64 0, i64* %17, align 8
  %18 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %19 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %18, i32 0, i32 12
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @DEBUG_INIT, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i8*, ...) @gig_dbg(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %24 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %23, i32 0, i32 11
  %25 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %26 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %27 = call i32 @gigaset_at_init(i32* %24, %struct.bc_state* %25, %struct.cardstate* %26, i32 -1)
  %28 = load i32, i32* @DEBUG_INIT, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i32, i8*, ...) @gig_dbg(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @PPP_INITFCS, align 4
  %32 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %33 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %32, i32 0, i32 9
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %35 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %34, i32 0, i32 8
  store i32 0, i32* %35, align 8
  %36 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %37 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %3
  %41 = load i32, i32* @INS_skip_frame, align 4
  %42 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %43 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %47 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  br label %70

48:                                               ; preds = %3
  %49 = load i64, i64* @SBUFSIZE, align 8
  %50 = load i64, i64* @HW_HDR_LEN, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32* @dev_alloc_skb(i64 %51)
  %53 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %54 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = icmp ne i32* %52, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %58 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @HW_HDR_LEN, align 8
  %61 = call i32 @skb_reserve(i32* %59, i64 %60)
  br label %69

62:                                               ; preds = %48
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @INS_skip_frame, align 4
  %65 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %66 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %62, %56
  br label %70

70:                                               ; preds = %69, %40
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %73 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %75 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %76 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %75, i32 0, i32 7
  store %struct.cardstate* %74, %struct.cardstate** %76, align 8
  %77 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %78 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %77, i32 0, i32 6
  store i64 0, i64* %78, align 8
  %79 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %80 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %82 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %81, i32 0, i32 5
  store i64 0, i64* %82, align 8
  %83 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %84 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %87 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %86, i32 0, i32 4
  store i64 %85, i64* %87, align 8
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %99, %70
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @AT_NUM, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %88
  %93 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %94 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %93, i32 0, i32 3
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  store i32* null, i32** %98, align 8
  br label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %88

102:                                              ; preds = %88
  %103 = load i32, i32* @DEBUG_INIT, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 (i32, i8*, ...) @gig_dbg(i32 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load %struct.cardstate*, %struct.cardstate** %6, align 8
  %107 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64 (%struct.bc_state*)*, i64 (%struct.bc_state*)** %109, align 8
  %111 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %112 = call i64 %110(%struct.bc_state* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  store %struct.bc_state* %115, %struct.bc_state** %4, align 8
  br label %132

116:                                              ; preds = %102
  %117 = load i32, i32* @DEBUG_INIT, align 4
  %118 = call i32 (i32, i8*, ...) @gig_dbg(i32 %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %119 = load i32, i32* @DEBUG_INIT, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 (i32, i8*, ...) @gig_dbg(i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %123 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %128 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @dev_kfree_skb(i32* %129)
  br label %131

131:                                              ; preds = %126, %116
  store %struct.bc_state* null, %struct.bc_state** %4, align 8
  br label %132

132:                                              ; preds = %131, %114
  %133 = load %struct.bc_state*, %struct.bc_state** %4, align 8
  ret %struct.bc_state* %133
}

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @gig_dbg(i32, i8*, ...) #1

declare dso_local i32 @gigaset_at_init(i32*, %struct.bc_state*, %struct.cardstate*, i32) #1

declare dso_local i32* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(i32*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
