; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_is_comp_in_ufi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_is_comp_in_ufi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.flash_section_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.flash_section_info_g2 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MAX_FLASH_COMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.flash_section_info*, i32)* @is_comp_in_ufi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_comp_in_ufi(%struct.be_adapter* %0, %struct.flash_section_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca %struct.flash_section_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.flash_section_info_g2*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %5, align 8
  store %struct.flash_section_info* %1, %struct.flash_section_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.flash_section_info_g2* null, %struct.flash_section_info_g2** %10, align 8
  %11 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %12 = call i64 @BE2_chip(%struct.be_adapter* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.flash_section_info*, %struct.flash_section_info** %6, align 8
  %16 = bitcast %struct.flash_section_info* %15 to %struct.flash_section_info_g2*
  store %struct.flash_section_info_g2* %16, %struct.flash_section_info_g2** %10, align 8
  br label %17

17:                                               ; preds = %14, %3
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %51, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @MAX_FLASH_COMP, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %18
  %23 = load %struct.flash_section_info_g2*, %struct.flash_section_info_g2** %10, align 8
  %24 = icmp ne %struct.flash_section_info_g2* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.flash_section_info_g2*, %struct.flash_section_info_g2** %10, align 8
  %27 = getelementptr inbounds %struct.flash_section_info_g2, %struct.flash_section_info_g2* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  store i32 %34, i32* %9, align 4
  br label %45

35:                                               ; preds = %22
  %36 = load %struct.flash_section_info*, %struct.flash_section_info** %6, align 8
  %37 = getelementptr inbounds %struct.flash_section_info, %struct.flash_section_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %35, %25
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %55

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %18

54:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @BE2_chip(%struct.be_adapter*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
