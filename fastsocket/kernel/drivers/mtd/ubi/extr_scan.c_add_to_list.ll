; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_scan.c_add_to_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_scan.c_add_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_scan_info = type { i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.list_head = type { i32 }
%struct.ubi_scan_leb = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"add to free: PEB %d, EC %d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"add to erase: PEB %d, EC %d\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"add to corrupted: PEB %d, EC %d\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"add to alien: PEB %d, EC %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_scan_info*, i32, i32, %struct.list_head*)* @add_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_list(%struct.ubi_scan_info* %0, i32 %1, i32 %2, %struct.list_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_scan_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.ubi_scan_leb*, align 8
  store %struct.ubi_scan_info* %0, %struct.ubi_scan_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  %11 = load %struct.list_head*, %struct.list_head** %9, align 8
  %12 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %6, align 8
  %13 = getelementptr inbounds %struct.ubi_scan_info, %struct.ubi_scan_info* %12, i32 0, i32 4
  %14 = icmp eq %struct.list_head* %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @dbg_bld(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  br label %55

19:                                               ; preds = %4
  %20 = load %struct.list_head*, %struct.list_head** %9, align 8
  %21 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %6, align 8
  %22 = getelementptr inbounds %struct.ubi_scan_info, %struct.ubi_scan_info* %21, i32 0, i32 3
  %23 = icmp eq %struct.list_head* %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @dbg_bld(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  br label %54

28:                                               ; preds = %19
  %29 = load %struct.list_head*, %struct.list_head** %9, align 8
  %30 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %6, align 8
  %31 = getelementptr inbounds %struct.ubi_scan_info, %struct.ubi_scan_info* %30, i32 0, i32 2
  %32 = icmp eq %struct.list_head* %29, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dbg_bld(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %6, align 8
  %38 = getelementptr inbounds %struct.ubi_scan_info, %struct.ubi_scan_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %53

41:                                               ; preds = %28
  %42 = load %struct.list_head*, %struct.list_head** %9, align 8
  %43 = load %struct.ubi_scan_info*, %struct.ubi_scan_info** %6, align 8
  %44 = getelementptr inbounds %struct.ubi_scan_info, %struct.ubi_scan_info* %43, i32 0, i32 1
  %45 = icmp eq %struct.list_head* %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @dbg_bld(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %48)
  br label %52

50:                                               ; preds = %41
  %51 = call i32 (...) @BUG()
  br label %52

52:                                               ; preds = %50, %46
  br label %53

53:                                               ; preds = %52, %33
  br label %54

54:                                               ; preds = %53, %24
  br label %55

55:                                               ; preds = %54, %15
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.ubi_scan_leb* @kmalloc(i32 12, i32 %56)
  store %struct.ubi_scan_leb* %57, %struct.ubi_scan_leb** %10, align 8
  %58 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %10, align 8
  %59 = icmp ne %struct.ubi_scan_leb* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %75

63:                                               ; preds = %55
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %10, align 8
  %66 = getelementptr inbounds %struct.ubi_scan_leb, %struct.ubi_scan_leb* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %10, align 8
  %69 = getelementptr inbounds %struct.ubi_scan_leb, %struct.ubi_scan_leb* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ubi_scan_leb*, %struct.ubi_scan_leb** %10, align 8
  %71 = getelementptr inbounds %struct.ubi_scan_leb, %struct.ubi_scan_leb* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.list_head*, %struct.list_head** %9, align 8
  %74 = call i32 @list_add_tail(i32* %72, %struct.list_head* %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %63, %60
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @dbg_bld(i8*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.ubi_scan_leb* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
