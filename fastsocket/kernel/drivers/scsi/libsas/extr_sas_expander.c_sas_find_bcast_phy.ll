; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_find_bcast_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_expander.c_sas_find_bcast_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.expander_device }
%struct.expander_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32*, i32, i32)* @sas_find_bcast_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_find_bcast_phy(%struct.domain_device* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.domain_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.expander_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %15 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %14, i32 0, i32 0
  store %struct.expander_device* %15, %struct.expander_device** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %12, align 4
  br label %17

17:                                               ; preds = %59, %4
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.expander_device*, %struct.expander_device** %10, align 8
  %20 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %17
  store i32 0, i32* %13, align 4
  %24 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @sas_get_phy_change_count(%struct.domain_device* %24, i32 %25, i32* %13)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %30 [
    i32 128, label %28
    i32 129, label %28
    i32 130, label %29
  ]

28:                                               ; preds = %23, %23
  br label %59

29:                                               ; preds = %23
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %63

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.expander_device*, %struct.expander_device** %10, align 8
  %35 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %33, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %32
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.expander_device*, %struct.expander_device** %10, align 8
  %49 = getelementptr inbounds %struct.expander_device, %struct.expander_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %47, i32* %54, align 4
  br label %55

55:                                               ; preds = %46, %43
  %56 = load i32, i32* %12, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %5, align 4
  br label %63

58:                                               ; preds = %32
  br label %59

59:                                               ; preds = %58, %28
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %17

62:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %55, %30
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @sas_get_phy_change_count(%struct.domain_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
