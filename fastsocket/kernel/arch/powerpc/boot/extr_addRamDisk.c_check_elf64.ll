; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_addRamDisk.c_check_elf64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_addRamDisk.c_check_elf64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_range = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64*, i64, i64, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@EI_MAG0 = common dso_local global i64 0, align 8
@ELFMAG0 = common dso_local global i64 0, align 8
@EI_MAG1 = common dso_local global i64 0, align 8
@ELFMAG1 = common dso_local global i64 0, align 8
@EI_MAG2 = common dso_local global i64 0, align 8
@ELFMAG2 = common dso_local global i64 0, align 8
@EI_MAG3 = common dso_local global i64 0, align 8
@ELFMAG3 = common dso_local global i64 0, align 8
@EI_CLASS = common dso_local global i64 0, align 8
@ELFCLASS64 = common dso_local global i64 0, align 8
@EI_DATA = common dso_local global i64 0, align 8
@ELFDATA2MSB = common dso_local global i64 0, align 8
@ET_EXEC = common dso_local global i64 0, align 8
@EM_PPC64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.addr_range*)* @check_elf64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_elf64(i8* %0, i32 %1, %struct.addr_range* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.addr_range*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.addr_range* %2, %struct.addr_range** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @EI_MAG0, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ELFMAG0, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %77, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @EI_MAG1, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ELFMAG1, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %77, label %29

29:                                               ; preds = %20
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @EI_MAG2, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ELFMAG2, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %77, label %38

38:                                               ; preds = %29
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @EI_MAG3, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ELFMAG3, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %77, label %47

47:                                               ; preds = %38
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @EI_CLASS, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ELFCLASS64, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %77, label %56

56:                                               ; preds = %47
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @EI_DATA, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ELFDATA2MSB, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %56
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ET_EXEC, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @EM_PPC64, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %65, %56, %47, %38, %29, %20, %3
  store i32 0, i32* %4, align 4
  br label %112

78:                                               ; preds = %71
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 64
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ugt i64 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %112

88:                                               ; preds = %78
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %90 = ptrtoint %struct.TYPE_4__* %89 to i64
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = add i64 %90, %94
  %96 = inttoptr i64 %95 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %96, %struct.TYPE_3__** %9, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.addr_range*, %struct.addr_range** %7, align 8
  %101 = getelementptr inbounds %struct.addr_range, %struct.addr_range* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.addr_range*, %struct.addr_range** %7, align 8
  %106 = getelementptr inbounds %struct.addr_range, %struct.addr_range* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.addr_range*, %struct.addr_range** %7, align 8
  %111 = getelementptr inbounds %struct.addr_range, %struct.addr_range* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  store i32 64, i32* %4, align 4
  br label %112

112:                                              ; preds = %88, %87, %77
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
