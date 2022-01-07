; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_flctl_chip_init_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_sh_flctl.c_flctl_chip_init_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.sh_flctl = type { i32, i64, i8*, i8*, %struct.nand_chip }
%struct.nand_chip = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32* }

@ADRCNT_4 = common dso_local global i8* null, align 8
@ADRCNT_3 = common dso_local global i8* null, align 8
@ADRCNT_2 = common dso_local global i8* null, align 8
@ADRCNT_1 = common dso_local global i8* null, align 8
@ADRCNT2_E = common dso_local global i8* null, align 8
@flctl_4secc_oob_16 = common dso_local global i32 0, align 4
@flctl_4secc_smallpage = common dso_local global i32 0, align 4
@flctl_4secc_oob_64 = common dso_local global i32 0, align 4
@flctl_4secc_largepage = common dso_local global i32 0, align 4
@flctl_read_page_hwecc = common dso_local global i32 0, align 4
@flctl_write_page_hwecc = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i32 0, align 4
@_4ECCEN = common dso_local global i32 0, align 4
@ECCPOS2 = common dso_local global i32 0, align 4
@ECCPOS_02 = common dso_local global i32 0, align 4
@NAND_ECC_SOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @flctl_chip_init_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flctl_chip_init_tail(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.sh_flctl*, align 8
  %4 = alloca %struct.nand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %5 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %6 = call %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info* %5)
  store %struct.sh_flctl* %6, %struct.sh_flctl** %3, align 8
  %7 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %8 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %7, i32 0, i32 4
  store %struct.nand_chip* %8, %struct.nand_chip** %4, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 512
  br i1 %12, label %13, label %48

13:                                               ; preds = %1
  %14 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %15 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 33554432
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load i8*, i8** @ADRCNT_4, align 8
  %22 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %23 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @ADRCNT_3, align 8
  %25 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %26 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  br label %47

27:                                               ; preds = %13
  %28 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 131072
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i8*, i8** @ADRCNT_3, align 8
  %34 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %35 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @ADRCNT_2, align 8
  %37 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %38 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  br label %46

39:                                               ; preds = %27
  %40 = load i8*, i8** @ADRCNT_2, align 8
  %41 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %42 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @ADRCNT_1, align 8
  %44 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %45 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %39, %32
  br label %47

47:                                               ; preds = %46, %20
  br label %83

48:                                               ; preds = %1
  %49 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %50 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 134217728
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i8*, i8** @ADRCNT2_E, align 8
  %57 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %58 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @ADRCNT_3, align 8
  %60 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %61 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %82

62:                                               ; preds = %48
  %63 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 524288
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i8*, i8** @ADRCNT_4, align 8
  %69 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %70 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @ADRCNT_2, align 8
  %72 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %73 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  br label %81

74:                                               ; preds = %62
  %75 = load i8*, i8** @ADRCNT_3, align 8
  %76 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %77 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @ADRCNT_1, align 8
  %79 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %80 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %74, %67
  br label %82

82:                                               ; preds = %81, %55
  br label %83

83:                                               ; preds = %82, %47
  %84 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %85 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %136

88:                                               ; preds = %83
  %89 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %90 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 512
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %95 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 5
  store i32* @flctl_4secc_oob_16, i32** %96, align 8
  %97 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %98 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %97, i32 0, i32 2
  store i32* @flctl_4secc_smallpage, i32** %98, align 8
  br label %105

99:                                               ; preds = %88
  %100 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %101 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 5
  store i32* @flctl_4secc_oob_64, i32** %102, align 8
  %103 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %104 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %103, i32 0, i32 2
  store i32* @flctl_4secc_largepage, i32** %104, align 8
  br label %105

105:                                              ; preds = %99, %93
  %106 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %107 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 512, i32* %108, align 8
  %109 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %110 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i32 10, i32* %111, align 4
  %112 = load i32, i32* @flctl_read_page_hwecc, align 4
  %113 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %114 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  store i32 %112, i32* %115, align 8
  %116 = load i32, i32* @flctl_write_page_hwecc, align 4
  %117 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %118 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* @NAND_ECC_HW, align 4
  %121 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %122 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 8
  %124 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %125 = call i32 @FLCMNCR(%struct.sh_flctl* %124)
  %126 = call i32 @readl(i32 %125)
  %127 = load i32, i32* @_4ECCEN, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @ECCPOS2, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @ECCPOS_02, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.sh_flctl*, %struct.sh_flctl** %3, align 8
  %134 = call i32 @FLCMNCR(%struct.sh_flctl* %133)
  %135 = call i32 @writel(i32 %132, i32 %134)
  br label %141

136:                                              ; preds = %83
  %137 = load i32, i32* @NAND_ECC_SOFT, align 4
  %138 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %139 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  store i32 %137, i32* %140, align 8
  br label %141

141:                                              ; preds = %136, %105
  ret i32 0
}

declare dso_local %struct.sh_flctl* @mtd_to_flctl(%struct.mtd_info*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @FLCMNCR(%struct.sh_flctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
