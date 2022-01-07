; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_probe_roms.c_find_oprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_probe_roms.c_find_oprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i32 }
%struct.pci_dev = type { i32 }

@adapter_rom_resources = common dso_local global %struct.resource* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.pci_dev*)* @find_oprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @find_oprom(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store %struct.resource* null, %struct.resource** %3, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %113, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.resource*, %struct.resource** @adapter_rom_resources, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.resource* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %116

17:                                               ; preds = %12
  %18 = load %struct.resource*, %struct.resource** @adapter_rom_resources, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %18, i64 %20
  store %struct.resource* %21, %struct.resource** %5, align 8
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %116

27:                                               ; preds = %17
  %28 = load %struct.resource*, %struct.resource** %5, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @isa_bus_to_virt(i32 %30)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 24
  %34 = load i16, i16* %6, align 2
  %35 = call i64 @probe_kernel_address(i8* %33, i16 zeroext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %113

38:                                               ; preds = %27
  %39 = load i8*, i8** %11, align 8
  %40 = load i16, i16* %6, align 2
  %41 = zext i16 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  %45 = load i16, i16* %7, align 2
  %46 = call i64 @probe_kernel_address(i8* %44, i16 zeroext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %113

49:                                               ; preds = %38
  %50 = load i8*, i8** %11, align 8
  %51 = load i16, i16* %6, align 2
  %52 = zext i16 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = getelementptr inbounds i8, i8* %54, i64 6
  %56 = load i16, i16* %8, align 2
  %57 = call i64 @probe_kernel_address(i8* %55, i16 zeroext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %113

60:                                               ; preds = %49
  %61 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %62 = load i16, i16* %7, align 2
  %63 = load i16, i16* %8, align 2
  %64 = call i64 @match_id(%struct.pci_dev* %61, i16 zeroext %62, i16 zeroext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load %struct.resource*, %struct.resource** %5, align 8
  store %struct.resource* %67, %struct.resource** %3, align 8
  br label %116

68:                                               ; preds = %60
  %69 = load i8*, i8** %11, align 8
  %70 = load i16, i16* %6, align 2
  %71 = zext i16 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = getelementptr inbounds i8, i8* %73, i64 8
  %75 = load i16, i16* %9, align 2
  %76 = call i64 @probe_kernel_address(i8* %74, i16 zeroext %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %112

78:                                               ; preds = %68
  %79 = load i8*, i8** %11, align 8
  %80 = load i16, i16* %6, align 2
  %81 = zext i16 %80 to i32
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  %84 = getelementptr inbounds i8, i8* %83, i64 12
  %85 = load i16, i16* %10, align 2
  %86 = call i64 @probe_kernel_address(i8* %84, i16 zeroext %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %78
  %89 = load i16, i16* %10, align 2
  %90 = zext i16 %89 to i32
  %91 = icmp sge i32 %90, 3
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = load i16, i16* %9, align 2
  %94 = zext i16 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %98 = load i16, i16* %7, align 2
  %99 = load i8*, i8** %11, align 8
  %100 = load i16, i16* %6, align 2
  %101 = zext i16 %100 to i32
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = load i16, i16* %9, align 2
  %105 = zext i16 %104 to i32
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = call i64 @probe_list(%struct.pci_dev* %97, i16 zeroext %98, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %96
  %111 = load %struct.resource*, %struct.resource** %5, align 8
  store %struct.resource* %111, %struct.resource** %3, align 8
  br label %116

112:                                              ; preds = %96, %92, %88, %78, %68
  br label %113

113:                                              ; preds = %112, %59, %48, %37
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %12

116:                                              ; preds = %110, %66, %26, %12
  %117 = load %struct.resource*, %struct.resource** %3, align 8
  ret %struct.resource* %117
}

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local i8* @isa_bus_to_virt(i32) #1

declare dso_local i64 @probe_kernel_address(i8*, i16 zeroext) #1

declare dso_local i64 @match_id(%struct.pci_dev*, i16 zeroext, i16 zeroext) #1

declare dso_local i64 @probe_list(%struct.pci_dev*, i16 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
