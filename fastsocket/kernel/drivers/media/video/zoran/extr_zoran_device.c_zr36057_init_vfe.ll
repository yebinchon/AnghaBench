; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_zr36057_init_vfe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_zr36057_init_vfe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoran = type { i32 }

@ZR36057_VFESPFR = common dso_local global i32 0, align 4
@ZR36057_VFESPFR_LittleEndian = common dso_local global i32 0, align 4
@ZR36057_VFESPFR_VCLKPol = common dso_local global i32 0, align 4
@ZR36057_VFESPFR_ExtFl = common dso_local global i32 0, align 4
@ZR36057_VFESPFR_TopField = common dso_local global i32 0, align 4
@ZR36057_VDCR = common dso_local global i32 0, align 4
@pci_pci_problems = common dso_local global i32 0, align 4
@PCIPCI_TRITON = common dso_local global i32 0, align 4
@ZR36057_VDCR_Triton = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zoran*)* @zr36057_init_vfe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zr36057_init_vfe(%struct.zoran* %0) #0 {
  %2 = alloca %struct.zoran*, align 8
  %3 = alloca i32, align 4
  store %struct.zoran* %0, %struct.zoran** %2, align 8
  %4 = load i32, i32* @ZR36057_VFESPFR, align 4
  %5 = call i32 @btread(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @ZR36057_VFESPFR_LittleEndian, align 4
  %7 = load i32, i32* %3, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @ZR36057_VFESPFR_VCLKPol, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @ZR36057_VFESPFR_ExtFl, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @ZR36057_VFESPFR_TopField, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ZR36057_VFESPFR, align 4
  %21 = call i32 @btwrite(i32 %19, i32 %20)
  %22 = load i32, i32* @ZR36057_VDCR, align 4
  %23 = call i32 @btread(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @pci_pci_problems, align 4
  %25 = load i32, i32* @PCIPCI_TRITON, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @ZR36057_VDCR_Triton, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %1
  %34 = load i32, i32* @ZR36057_VDCR_Triton, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @ZR36057_VDCR, align 4
  %40 = call i32 @btwrite(i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @btread(i32) #1

declare dso_local i32 @btwrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
