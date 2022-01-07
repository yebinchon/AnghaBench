; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_update_mac_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_update_mac_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, %struct.TYPE_4__*, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"update_mac %pM\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fnic_update_mac_locked(%struct.fnic* %0, i32* %1) #0 {
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.fnic* %0, %struct.fnic** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.fnic*, %struct.fnic** %3, align 8
  %8 = getelementptr inbounds %struct.fnic, %struct.fnic* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load %struct.fnic*, %struct.fnic** %3, align 8
  %12 = getelementptr inbounds %struct.fnic, %struct.fnic* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @is_zero_ether_addr(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  store i32* %18, i32** %4, align 8
  br label %19

19:                                               ; preds = %17, %2
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @compare_ether_addr(i32* %20, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %63

25:                                               ; preds = %19
  %26 = load i32, i32* @KERN_DEBUG, align 4
  %27 = load %struct.fnic*, %struct.fnic** %3, align 8
  %28 = getelementptr inbounds %struct.fnic, %struct.fnic* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @FNIC_FCS_DBG(i32 %26, i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @is_zero_ether_addr(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %25
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @compare_ether_addr(i32* %38, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.fnic*, %struct.fnic** %3, align 8
  %44 = getelementptr inbounds %struct.fnic, %struct.fnic* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @vnic_dev_del_addr(i32 %45, i32* %46)
  br label %48

48:                                               ; preds = %42, %37, %25
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @memcpy(i32* %49, i32* %50, i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @compare_ether_addr(i32* %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.fnic*, %struct.fnic** %3, align 8
  %59 = getelementptr inbounds %struct.fnic, %struct.fnic* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @vnic_dev_add_addr(i32 %60, i32* %61)
  br label %63

63:                                               ; preds = %24, %57, %48
  ret void
}

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local i64 @compare_ether_addr(i32*, i32*) #1

declare dso_local i32 @FNIC_FCS_DBG(i32, i32, i8*, i32*) #1

declare dso_local i32 @vnic_dev_del_addr(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @vnic_dev_add_addr(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
