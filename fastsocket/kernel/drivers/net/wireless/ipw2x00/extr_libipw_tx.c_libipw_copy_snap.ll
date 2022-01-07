; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_tx.c_libipw_copy_snap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_tx.c_libipw_copy_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_snap_hdr = type { i32, i32, i32, i8** }

@ETH_P_AARP = common dso_local global i32 0, align 4
@ETH_P_IPX = common dso_local global i32 0, align 4
@P802_1H_OUI = common dso_local global i8** null, align 8
@RFC1042_OUI = common dso_local global i8** null, align 8
@SNAP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64)* @libipw_copy_snap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libipw_copy_snap(i8** %0, i64 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.libipw_snap_hdr*, align 8
  %6 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = bitcast i8** %7 to %struct.libipw_snap_hdr*
  store %struct.libipw_snap_hdr* %8, %struct.libipw_snap_hdr** %5, align 8
  %9 = load %struct.libipw_snap_hdr*, %struct.libipw_snap_hdr** %5, align 8
  %10 = getelementptr inbounds %struct.libipw_snap_hdr, %struct.libipw_snap_hdr* %9, i32 0, i32 0
  store i32 170, i32* %10, align 8
  %11 = load %struct.libipw_snap_hdr*, %struct.libipw_snap_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.libipw_snap_hdr, %struct.libipw_snap_hdr* %11, i32 0, i32 1
  store i32 170, i32* %12, align 4
  %13 = load %struct.libipw_snap_hdr*, %struct.libipw_snap_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.libipw_snap_hdr, %struct.libipw_snap_hdr* %13, i32 0, i32 2
  store i32 3, i32* %14, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* @ETH_P_AARP, align 4
  %17 = call i64 @htons(i32 %16)
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* @ETH_P_IPX, align 4
  %22 = call i64 @htons(i32 %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %2
  %25 = load i8**, i8*** @P802_1H_OUI, align 8
  store i8** %25, i8*** %6, align 8
  br label %28

26:                                               ; preds = %19
  %27 = load i8**, i8*** @RFC1042_OUI, align 8
  store i8** %27, i8*** %6, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i8**, i8*** %6, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.libipw_snap_hdr*, %struct.libipw_snap_hdr** %5, align 8
  %33 = getelementptr inbounds %struct.libipw_snap_hdr, %struct.libipw_snap_hdr* %32, i32 0, i32 3
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  store i8* %31, i8** %35, align 8
  %36 = load i8**, i8*** %6, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.libipw_snap_hdr*, %struct.libipw_snap_hdr** %5, align 8
  %40 = getelementptr inbounds %struct.libipw_snap_hdr, %struct.libipw_snap_hdr* %39, i32 0, i32 3
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  store i8* %38, i8** %42, align 8
  %43 = load i8**, i8*** %6, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 2
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.libipw_snap_hdr*, %struct.libipw_snap_hdr** %5, align 8
  %47 = getelementptr inbounds %struct.libipw_snap_hdr, %struct.libipw_snap_hdr* %46, i32 0, i32 3
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  store i8* %45, i8** %49, align 8
  %50 = load i8**, i8*** %3, align 8
  %51 = load i32, i32* @SNAP_SIZE, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = call i32 @memcpy(i8** %53, i64* %4, i32 4)
  %55 = load i32, i32* @SNAP_SIZE, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 4
  %58 = trunc i64 %57 to i32
  ret i32 %58
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memcpy(i8**, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
