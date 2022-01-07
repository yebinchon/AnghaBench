; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_flctl_read_page_hwecc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_flctl_read_page_hwecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nand_chip = type { i32 (%struct.mtd_info.0*, i32*, i32)*, %struct.TYPE_3__ }
%struct.mtd_info.0 = type opaque
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sh_flctl = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32*, i32)* @flctl_read_page_hwecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flctl_read_page_hwecc(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sh_flctl*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load i32*, i32** %7, align 8
  store i32* %27, i32** %13, align 8
  %28 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %29 = call %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info* %28)
  store %struct.sh_flctl* %29, %struct.sh_flctl** %14, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %42, %4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 0
  %36 = load i32 (%struct.mtd_info.0*, i32*, i32)*, i32 (%struct.mtd_info.0*, i32*, i32)** %35, align 8
  %37 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %38 = bitcast %struct.mtd_info* %37 to %struct.mtd_info.0*
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 %36(%struct.mtd_info.0* %38, i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %13, align 8
  br label %30

52:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %78, %52
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %88

56:                                               ; preds = %53
  %57 = load %struct.sh_flctl*, %struct.sh_flctl** %14, align 8
  %58 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %67 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %77

71:                                               ; preds = %56
  %72 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %73 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 0
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %65
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32*, i32** %13, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %13, align 8
  br label %53

88:                                               ; preds = %53
  ret i32 0
}

declare dso_local %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
