; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoetgt = type { %struct.aoedev*, i32 }
%struct.aoedev = type { i64, i32, i64 }
%struct.frame = type { i64, i64, i32, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i64, i64, i64 }
%struct.sk_buff_head = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s %pm for e%ld.%d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"aoe: cannot probe remote address\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"no frame available\00", align 1
@FFL_PROBE = common dso_local global i32 0, align 4
@DEFAULTBCNT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@empty_page = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoetgt*)* @probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probe(%struct.aoetgt* %0) #0 {
  %2 = alloca %struct.aoetgt*, align 8
  %3 = alloca %struct.aoedev*, align 8
  %4 = alloca %struct.frame*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff_head, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.aoetgt* %0, %struct.aoetgt** %2, align 8
  %10 = load %struct.aoetgt*, %struct.aoetgt** %2, align 8
  %11 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %10, i32 0, i32 0
  %12 = load %struct.aoedev*, %struct.aoedev** %11, align 8
  store %struct.aoedev* %12, %struct.aoedev** %3, align 8
  %13 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %14 = load %struct.aoetgt*, %struct.aoetgt** %2, align 8
  %15 = call %struct.frame* @newtframe(%struct.aoedev* %13, %struct.aoetgt* %14)
  store %struct.frame* %15, %struct.frame** %4, align 8
  %16 = load %struct.frame*, %struct.frame** %4, align 8
  %17 = icmp ne %struct.frame* %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %1
  %19 = load %struct.aoetgt*, %struct.aoetgt** %2, align 8
  %20 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %23 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %26 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %21, i64 %24, i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %124

29:                                               ; preds = %1
  %30 = load i32, i32* @FFL_PROBE, align 4
  %31 = load %struct.frame*, %struct.frame** %4, align 8
  %32 = getelementptr inbounds %struct.frame, %struct.frame* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.aoetgt*, %struct.aoetgt** %2, align 8
  %36 = call i32 @ifrotate(%struct.aoetgt* %35)
  %37 = load %struct.aoetgt*, %struct.aoetgt** %2, align 8
  %38 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %37, i32 0, i32 0
  %39 = load %struct.aoedev*, %struct.aoedev** %38, align 8
  %40 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %29
  %44 = load %struct.aoetgt*, %struct.aoetgt** %2, align 8
  %45 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %44, i32 0, i32 0
  %46 = load %struct.aoedev*, %struct.aoedev** %45, align 8
  %47 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  br label %51

49:                                               ; preds = %29
  %50 = load i64, i64* @DEFAULTBCNT, align 8
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi i64 [ %48, %43 ], [ %50, %49 ]
  %53 = load %struct.frame*, %struct.frame** %4, align 8
  %54 = getelementptr inbounds %struct.frame, %struct.frame* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.frame*, %struct.frame** %4, align 8
  %56 = call i32 @ata_rw_frameinit(%struct.frame* %55)
  %57 = load %struct.frame*, %struct.frame** %4, align 8
  %58 = getelementptr inbounds %struct.frame, %struct.frame* %57, i32 0, i32 3
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  store %struct.sk_buff* %59, %struct.sk_buff** %5, align 8
  store i32 0, i32* %9, align 4
  %60 = load %struct.frame*, %struct.frame** %4, align 8
  %61 = getelementptr inbounds %struct.frame, %struct.frame* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %80, %51
  %64 = load i64, i64* %7, align 8
  %65 = icmp ugt i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %63
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @PAGE_SIZE, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* %7, align 8
  store i64 %71, i64* %8, align 8
  br label %74

72:                                               ; preds = %66
  %73 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @empty_page, align 4
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @skb_fill_page_desc(%struct.sk_buff* %75, i32 %76, i32 %77, i32 0, i64 %78)
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %7, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %7, align 8
  br label %63

86:                                               ; preds = %63
  %87 = load %struct.frame*, %struct.frame** %4, align 8
  %88 = getelementptr inbounds %struct.frame, %struct.frame* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, %89
  store i64 %93, i64* %91, align 8
  %94 = load %struct.frame*, %struct.frame** %4, align 8
  %95 = getelementptr inbounds %struct.frame, %struct.frame* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.frame*, %struct.frame** %4, align 8
  %100 = getelementptr inbounds %struct.frame, %struct.frame* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, %101
  store i64 %105, i64* %103, align 8
  %106 = load %struct.frame*, %struct.frame** %4, align 8
  %107 = getelementptr inbounds %struct.frame, %struct.frame* %106, i32 0, i32 3
  %108 = load %struct.sk_buff*, %struct.sk_buff** %107, align 8
  %109 = load i32, i32* @GFP_ATOMIC, align 4
  %110 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %108, i32 %109)
  store %struct.sk_buff* %110, %struct.sk_buff** %5, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = icmp ne %struct.sk_buff* %111, null
  br i1 %112, label %113, label %124

113:                                              ; preds = %86
  %114 = load %struct.frame*, %struct.frame** %4, align 8
  %115 = getelementptr inbounds %struct.frame, %struct.frame* %114, i32 0, i32 2
  %116 = call i32 @do_gettimeofday(i32* %115)
  %117 = load i64, i64* @jiffies, align 8
  %118 = load %struct.frame*, %struct.frame** %4, align 8
  %119 = getelementptr inbounds %struct.frame, %struct.frame* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %6)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %6, %struct.sk_buff* %121)
  %123 = call i32 @aoenet_xmit(%struct.sk_buff_head* %6)
  br label %124

124:                                              ; preds = %18, %113, %86
  ret void
}

declare dso_local %struct.frame* @newtframe(%struct.aoedev*, %struct.aoetgt*) #1

declare dso_local i32 @pr_err(i8*, i8*, i32, i64, i32, i8*) #1

declare dso_local i32 @ifrotate(%struct.aoetgt*) #1

declare dso_local i32 @ata_rw_frameinit(%struct.frame*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32, i32, i64) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @aoenet_xmit(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
