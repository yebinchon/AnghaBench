; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_bus_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_nodemgr.c_nodemgr_bus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_csr = type { i32 }
%struct.nodemgr_csr_info = type { i64, i32, i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csr1212_csr*, i32, i8*, i8*)* @nodemgr_bus_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nodemgr_bus_read(%struct.csr1212_csr* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.csr1212_csr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nodemgr_csr_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.csr1212_csr* %0, %struct.csr1212_csr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.nodemgr_csr_info*
  store %struct.nodemgr_csr_info* %14, %struct.nodemgr_csr_info** %10, align 8
  store i32 1, i32* %11, align 4
  br label %15

15:                                               ; preds = %58, %4
  %16 = load %struct.nodemgr_csr_info*, %struct.nodemgr_csr_info** %10, align 8
  %17 = getelementptr inbounds %struct.nodemgr_csr_info, %struct.nodemgr_csr_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.nodemgr_csr_info*, %struct.nodemgr_csr_info** %10, align 8
  %20 = getelementptr inbounds %struct.nodemgr_csr_info, %struct.nodemgr_csr_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nodemgr_csr_info*, %struct.nodemgr_csr_info** %10, align 8
  %23 = getelementptr inbounds %struct.nodemgr_csr_info, %struct.nodemgr_csr_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @hpsb_read(i32 %18, i32 %21, i32 %24, i32 %25, i8* %26, i32 4)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %15
  %31 = load %struct.nodemgr_csr_info*, %struct.nodemgr_csr_info** %10, align 8
  %32 = getelementptr inbounds %struct.nodemgr_csr_info, %struct.nodemgr_csr_info* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %61

33:                                               ; preds = %15
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %61

37:                                               ; preds = %33
  %38 = load %struct.nodemgr_csr_info*, %struct.nodemgr_csr_info** %10, align 8
  %39 = getelementptr inbounds %struct.nodemgr_csr_info, %struct.nodemgr_csr_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.nodemgr_csr_info*, %struct.nodemgr_csr_info** %10, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @nodemgr_check_speed(%struct.nodemgr_csr_info* %43, i32 %44, i8* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %61

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %37
  %52 = call i64 @msleep_interruptible(i32 334)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @EINTR, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %63

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %15

61:                                               ; preds = %49, %36, %30
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %54
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @hpsb_read(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @nodemgr_check_speed(%struct.nodemgr_csr_info*, i32, i8*) #1

declare dso_local i64 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
