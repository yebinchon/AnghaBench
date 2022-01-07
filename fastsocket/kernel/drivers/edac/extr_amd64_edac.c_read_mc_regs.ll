; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_read_mc_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_read_mc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32 }
%struct.amd64_pvt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@boot_cpu_data = common dso_local global %struct.cpuinfo_x86 zeroinitializer, align 4
@MSR_K8_TOP_MEM1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"  TOP_MEM:  0x%016llx\0A\00", align 1
@MSR_K8_SYSCFG = common dso_local global i32 0, align 4
@MSR_K8_TOP_MEM2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"  TOP_MEM2: 0x%016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"  TOP_MEM2 disabled.\0A\00", align 1
@NBCAP = common dso_local global i32 0, align 4
@DRAM_RANGES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"  DRAM range[%d], base: 0x%016llx; limit: 0x%016llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"   IntlvEn=%s; Range access: %s%s IntlvSel=%d DstNode=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@DHAR = common dso_local global i32 0, align 4
@DBAM0 = common dso_local global i32 0, align 4
@F10_ONLINE_SPARE = common dso_local global i32 0, align 4
@DCLR0 = common dso_local global i32 0, align 4
@DCHR0 = common dso_local global i32 0, align 4
@DCLR1 = common dso_local global i32 0, align 4
@DCHR1 = common dso_local global i32 0, align 4
@EXT_NB_MCA_CFG = common dso_local global i32 0, align 4
@DBAM1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd64_pvt*)* @read_mc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_mc_regs(%struct.amd64_pvt* %0) #0 {
  %2 = alloca %struct.amd64_pvt*, align 8
  %3 = alloca %struct.cpuinfo_x86*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %2, align 8
  store %struct.cpuinfo_x86* @boot_cpu_data, %struct.cpuinfo_x86** %3, align 8
  %8 = load i32, i32* @MSR_K8_TOP_MEM1, align 4
  %9 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %10 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @rdmsrl(i32 %8, i32 %11)
  %13 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %14 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, ...) @debugf0(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @MSR_K8_SYSCFG, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @rdmsrl(i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 2097152
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load i32, i32* @MSR_K8_TOP_MEM2, align 4
  %25 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %26 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rdmsrl(i32 %24, i32 %27)
  %29 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %30 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @debugf0(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %35

33:                                               ; preds = %1
  %34 = call i32 (i8*, ...) @debugf0(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %23
  %36 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %37 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NBCAP, align 4
  %40 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %41 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %40, i32 0, i32 2
  %42 = call i32 @amd64_read_pci_cfg(i32 %38, i32 %39, i32* %41)
  %43 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %44 = call i32 @read_dram_ctl_register(%struct.amd64_pvt* %43)
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %91, %35
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @DRAM_RANGES, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %94

49:                                               ; preds = %45
  %50 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @read_dram_base_limit_regs(%struct.amd64_pvt* %50, i32 %51)
  %53 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @dram_rw(%struct.amd64_pvt* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  br label %91

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @get_dram_base(%struct.amd64_pvt* %61, i32 %62)
  %64 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @get_dram_limit(%struct.amd64_pvt* %64, i32 %65)
  %67 = call i32 (i8*, ...) @debugf1(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %63, i32 %66)
  %68 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @dram_intlv_en(%struct.amd64_pvt* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 1
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, 2
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %84 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @dram_intlv_sel(%struct.amd64_pvt* %84, i32 %85)
  %87 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @dram_dst_node(%struct.amd64_pvt* %87, i32 %88)
  %90 = call i32 (i8*, ...) @debugf1(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i8* %73, i8* %78, i8* %83, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %59, %58
  %92 = load i32, i32* %6, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %45

94:                                               ; preds = %45
  %95 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %96 = call i32 @read_dct_base_mask(%struct.amd64_pvt* %95)
  %97 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %98 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @DHAR, align 4
  %101 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %102 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %101, i32 0, i32 3
  %103 = call i32 @amd64_read_pci_cfg(i32 %99, i32 %100, i32* %102)
  %104 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %105 = load i32, i32* @DBAM0, align 4
  %106 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %107 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %106, i32 0, i32 12
  %108 = call i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt* %104, i32 %105, i32* %107)
  %109 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %110 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @F10_ONLINE_SPARE, align 4
  %113 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %114 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %113, i32 0, i32 4
  %115 = call i32 @amd64_read_pci_cfg(i32 %111, i32 %112, i32* %114)
  %116 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %117 = load i32, i32* @DCLR0, align 4
  %118 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %119 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %118, i32 0, i32 11
  %120 = call i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt* %116, i32 %117, i32* %119)
  %121 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %122 = load i32, i32* @DCHR0, align 4
  %123 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %124 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %123, i32 0, i32 10
  %125 = call i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt* %121, i32 %122, i32* %124)
  %126 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %127 = call i32 @dct_ganging_enabled(%struct.amd64_pvt* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %94
  %130 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %131 = load i32, i32* @DCLR1, align 4
  %132 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %133 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %132, i32 0, i32 9
  %134 = call i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt* %130, i32 %131, i32* %133)
  %135 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %136 = load i32, i32* @DCHR1, align 4
  %137 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %138 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %137, i32 0, i32 8
  %139 = call i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt* %135, i32 %136, i32* %138)
  br label %140

140:                                              ; preds = %129, %94
  %141 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %142 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %141, i32 0, i32 5
  store i32 4, i32* %142, align 4
  %143 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %144 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp sge i32 %145, 16
  br i1 %146, label %147, label %182

147:                                              ; preds = %140
  %148 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %149 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @EXT_NB_MCA_CFG, align 4
  %152 = call i32 @amd64_read_pci_cfg(i32 %150, i32 %151, i32* %5)
  %153 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %154 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 22
  br i1 %156, label %157, label %163

157:                                              ; preds = %147
  %158 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %159 = load i32, i32* @DBAM1, align 4
  %160 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %161 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %160, i32 0, i32 6
  %162 = call i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt* %158, i32 %159, i32* %161)
  br label %163

163:                                              ; preds = %157, %147
  %164 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %165 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp sgt i32 %166, 16
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %170 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp sgt i32 %171, 7
  br i1 %172, label %173, label %181

173:                                              ; preds = %168, %163
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @BIT(i32 25)
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %180 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %179, i32 0, i32 5
  store i32 8, i32* %180, align 4
  br label %181

181:                                              ; preds = %178, %173, %168
  br label %182

182:                                              ; preds = %181, %140
  %183 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %184 = call i32 @dump_misc_regs(%struct.amd64_pvt* %183)
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @debugf0(i8*, ...) #1

declare dso_local i32 @amd64_read_pci_cfg(i32, i32, i32*) #1

declare dso_local i32 @read_dram_ctl_register(%struct.amd64_pvt*) #1

declare dso_local i32 @read_dram_base_limit_regs(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @dram_rw(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @debugf1(i8*, ...) #1

declare dso_local i32 @get_dram_base(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @get_dram_limit(%struct.amd64_pvt*, i32) #1

declare dso_local i64 @dram_intlv_en(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @dram_intlv_sel(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @dram_dst_node(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @read_dct_base_mask(%struct.amd64_pvt*) #1

declare dso_local i32 @amd64_read_dct_pci_cfg(%struct.amd64_pvt*, i32, i32*) #1

declare dso_local i32 @dct_ganging_enabled(%struct.amd64_pvt*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dump_misc_regs(%struct.amd64_pvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
