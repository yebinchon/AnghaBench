; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_statsupd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_statsupd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64*, i64 }
%struct.macstat = type { i32 }

@M_UCODE_MACSTAT = common dso_local global i32 0, align 4
@OBJADDR_SHM_SEL = common dso_local global i32 0, align 4
@NFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*)* @brcms_c_statsupd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_statsupd(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.macstat, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %5 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %5, i32 0, i32 1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %14 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load i32, i32* @M_UCODE_MACSTAT, align 4
  %17 = load i32, i32* @OBJADDR_SHM_SEL, align 4
  %18 = call i32 @brcms_b_copyfrom_objmem(%struct.TYPE_8__* %15, i32 %16, %struct.macstat* %4, i32 4, i32 %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %46, %12
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @NFIFO, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19
  %24 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %25 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %23
  %35 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %36 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @dma_counterreset(i64 %43)
  br label %45

45:                                               ; preds = %34, %23
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %19

49:                                               ; preds = %11, %19
  ret void
}

declare dso_local i32 @brcms_b_copyfrom_objmem(%struct.TYPE_8__*, i32, %struct.macstat*, i32, i32) #1

declare dso_local i32 @dma_counterreset(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
