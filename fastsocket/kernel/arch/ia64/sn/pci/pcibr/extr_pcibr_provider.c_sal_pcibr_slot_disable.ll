; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_provider.c_sal_pcibr_slot_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_provider.c_sal_pcibr_slot_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcibus_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ia64_sal_retval = type { i64, i64 }

@SN_SAL_IOIF_SLOT_DISABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sal_pcibr_slot_disable(%struct.pcibus_info* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.pcibus_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ia64_sal_retval, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcibus_info* %0, %struct.pcibus_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = getelementptr inbounds %struct.ia64_sal_retval, %struct.ia64_sal_retval* %9, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.ia64_sal_retval, %struct.ia64_sal_retval* %9, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.pcibus_info*, %struct.pcibus_info** %5, align 8
  %15 = getelementptr inbounds %struct.pcibus_info, %struct.pcibus_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.pcibus_info*, %struct.pcibus_info** %5, align 8
  %19 = getelementptr inbounds %struct.pcibus_info, %struct.pcibus_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i64, i64* @SN_SAL_IOIF_SLOT_DISABLE, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = bitcast %struct.ia64_sal_retval* %9 to { i64, i64 }*
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @SAL_CALL_NOLOCK(i64 %32, i64 %34, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %29, i32 0, i32 0)
  %36 = getelementptr inbounds %struct.ia64_sal_retval, %struct.ia64_sal_retval* %9, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  ret i32 %38
}

declare dso_local i32 @SAL_CALL_NOLOCK(i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
