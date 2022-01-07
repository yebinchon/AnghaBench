; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_schizo.c_schizo_pcierr_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_schizo.c_schizo_pcierr_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, i32, i32 }

@SCHIZO_PCI_AFSR = common dso_local global i64 0, align 8
@SCHIZO_PCI_AFAR = common dso_local global i64 0, align 8
@SCHIZO_PCIAFSR_PMA = common dso_local global i64 0, align 8
@SCHIZO_PCIAFSR_PTA = common dso_local global i64 0, align 8
@SCHIZO_PCIAFSR_PRTRY = common dso_local global i64 0, align 8
@SCHIZO_PCIAFSR_PPERR = common dso_local global i64 0, align 8
@SCHIZO_PCIAFSR_PTTO = common dso_local global i64 0, align 8
@SCHIZO_PCIAFSR_PUNUS = common dso_local global i64 0, align 8
@SCHIZO_PCIAFSR_SMA = common dso_local global i64 0, align 8
@SCHIZO_PCIAFSR_STA = common dso_local global i64 0, align 8
@SCHIZO_PCIAFSR_SRTRY = common dso_local global i64 0, align 8
@SCHIZO_PCIAFSR_SPERR = common dso_local global i64 0, align 8
@SCHIZO_PCIAFSR_STTO = common dso_local global i64 0, align 8
@SCHIZO_PCIAFSR_SUNUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"%s: PCI Error, primary error type[%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Master Abort\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Target Abort\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Excessive Retries\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Parity Error\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Bus Unusable\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"%s: bytemask[%04lx] was_block(%d) space(%s)\0A\00", align 1
@SCHIZO_PCIAFSR_BMSK = common dso_local global i64 0, align 8
@SCHIZO_PCIAFSR_BLK = common dso_local global i64 0, align 8
@SCHIZO_PCIAFSR_CFG = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@SCHIZO_PCIAFSR_MEM = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@SCHIZO_PCIAFSR_IO = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"I/O\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%s: PCI AFAR [%016lx]\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"%s: PCI Secondary errors [\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"(Master Abort)\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"(Target Abort)\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"(Excessive Retries)\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"(Parity Error)\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"(Timeout)\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"(Bus Unusable)\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@PCI_ERR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @schizo_pcierr_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schizo_pcierr_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_pbm_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.pci_pbm_info*
  store %struct.pci_pbm_info* %15, %struct.pci_pbm_info** %6, align 8
  %16 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %17 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @SCHIZO_PCI_AFSR, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @SCHIZO_PCI_AFAR, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @upa_readq(i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @upa_readq(i64 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @SCHIZO_PCIAFSR_PMA, align 8
  %31 = load i64, i64* @SCHIZO_PCIAFSR_PTA, align 8
  %32 = or i64 %30, %31
  %33 = load i64, i64* @SCHIZO_PCIAFSR_PRTRY, align 8
  %34 = or i64 %32, %33
  %35 = load i64, i64* @SCHIZO_PCIAFSR_PPERR, align 8
  %36 = or i64 %34, %35
  %37 = load i64, i64* @SCHIZO_PCIAFSR_PTTO, align 8
  %38 = or i64 %36, %37
  %39 = load i64, i64* @SCHIZO_PCIAFSR_PUNUS, align 8
  %40 = or i64 %38, %39
  %41 = load i64, i64* @SCHIZO_PCIAFSR_SMA, align 8
  %42 = or i64 %40, %41
  %43 = load i64, i64* @SCHIZO_PCIAFSR_STA, align 8
  %44 = or i64 %42, %43
  %45 = load i64, i64* @SCHIZO_PCIAFSR_SRTRY, align 8
  %46 = or i64 %44, %45
  %47 = load i64, i64* @SCHIZO_PCIAFSR_SPERR, align 8
  %48 = or i64 %46, %47
  %49 = load i64, i64* @SCHIZO_PCIAFSR_STTO, align 8
  %50 = or i64 %48, %49
  %51 = load i64, i64* @SCHIZO_PCIAFSR_SUNUS, align 8
  %52 = or i64 %50, %51
  %53 = and i64 %29, %52
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %2
  %57 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %58 = call i32 @schizo_pcierr_intr_other(%struct.pci_pbm_info* %57)
  store i32 %58, i32* %3, align 4
  br label %261

59:                                               ; preds = %2
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @upa_writeq(i64 %60, i64 %61)
  %63 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %64 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* @SCHIZO_PCIAFSR_PMA, align 8
  %68 = and i64 %66, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %110

71:                                               ; preds = %59
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @SCHIZO_PCIAFSR_PTA, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %108

77:                                               ; preds = %71
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* @SCHIZO_PCIAFSR_PRTRY, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %106

83:                                               ; preds = %77
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* @SCHIZO_PCIAFSR_PPERR, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %104

89:                                               ; preds = %83
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* @SCHIZO_PCIAFSR_PTTO, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %102

95:                                               ; preds = %89
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* @SCHIZO_PCIAFSR_PUNUS, align 8
  %98 = and i64 %96, %97
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  br label %102

102:                                              ; preds = %95, %94
  %103 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %94 ], [ %101, %95 ]
  br label %104

104:                                              ; preds = %102, %88
  %105 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %88 ], [ %103, %102 ]
  br label %106

106:                                              ; preds = %104, %82
  %107 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %82 ], [ %105, %104 ]
  br label %108

108:                                              ; preds = %106, %76
  %109 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %76 ], [ %107, %106 ]
  br label %110

110:                                              ; preds = %108, %70
  %111 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %70 ], [ %109, %108 ]
  %112 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %65, i8* %111)
  %113 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %114 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* @SCHIZO_PCIAFSR_BMSK, align 8
  %118 = and i64 %116, %117
  %119 = lshr i64 %118, 32
  %120 = load i64, i64* %10, align 8
  %121 = load i64, i64* @SCHIZO_PCIAFSR_BLK, align 8
  %122 = and i64 %120, %121
  %123 = icmp ne i64 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 1, i32 0
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* @SCHIZO_PCIAFSR_CFG, align 8
  %128 = and i64 %126, %127
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %110
  br label %146

131:                                              ; preds = %110
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* @SCHIZO_PCIAFSR_MEM, align 8
  %134 = and i64 %132, %133
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %144

137:                                              ; preds = %131
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* @SCHIZO_PCIAFSR_IO, align 8
  %140 = and i64 %138, %139
  %141 = icmp ne i64 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  br label %144

144:                                              ; preds = %137, %136
  %145 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), %136 ], [ %143, %137 ]
  br label %146

146:                                              ; preds = %144, %130
  %147 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %130 ], [ %145, %144 ]
  %148 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %115, i64 %119, i32 %125, i8* %147)
  %149 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %150 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i64, i64* %11, align 8
  %153 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %151, i64 %152)
  %154 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %155 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %156)
  store i32 0, i32* %13, align 4
  %158 = load i64, i64* %10, align 8
  %159 = load i64, i64* @SCHIZO_PCIAFSR_SMA, align 8
  %160 = and i64 %158, %159
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %146
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %13, align 4
  %165 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %166

166:                                              ; preds = %162, %146
  %167 = load i64, i64* %10, align 8
  %168 = load i64, i64* @SCHIZO_PCIAFSR_STA, align 8
  %169 = and i64 %167, %168
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  %174 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  br label %175

175:                                              ; preds = %171, %166
  %176 = load i64, i64* %10, align 8
  %177 = load i64, i64* @SCHIZO_PCIAFSR_SRTRY, align 8
  %178 = and i64 %176, %177
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %13, align 4
  %183 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  br label %184

184:                                              ; preds = %180, %175
  %185 = load i64, i64* %10, align 8
  %186 = load i64, i64* @SCHIZO_PCIAFSR_SPERR, align 8
  %187 = and i64 %185, %186
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %13, align 4
  %192 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  br label %193

193:                                              ; preds = %189, %184
  %194 = load i64, i64* %10, align 8
  %195 = load i64, i64* @SCHIZO_PCIAFSR_STTO, align 8
  %196 = and i64 %194, %195
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  %201 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  br label %202

202:                                              ; preds = %198, %193
  %203 = load i64, i64* %10, align 8
  %204 = load i64, i64* @SCHIZO_PCIAFSR_SUNUS, align 8
  %205 = and i64 %203, %204
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load i32, i32* %13, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %13, align 4
  %210 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  br label %211

211:                                              ; preds = %207, %202
  %212 = load i32, i32* %13, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %211
  %217 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %218 = load i64, i64* %12, align 8
  %219 = load i64, i64* @SCHIZO_PCIAFSR_PTA, align 8
  %220 = load i64, i64* @SCHIZO_PCIAFSR_STA, align 8
  %221 = or i64 %219, %220
  %222 = and i64 %218, %221
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %216
  %225 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %226 = load i32, i32* @PCI_ERR, align 4
  %227 = call i32 @schizo_check_iommu_error(%struct.pci_pbm_info* %225, i32 %226)
  %228 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %229 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %230 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @pci_scan_for_target_abort(%struct.pci_pbm_info* %228, i32 %231)
  br label %233

233:                                              ; preds = %224, %216
  %234 = load i64, i64* %12, align 8
  %235 = load i64, i64* @SCHIZO_PCIAFSR_PMA, align 8
  %236 = load i64, i64* @SCHIZO_PCIAFSR_SMA, align 8
  %237 = or i64 %235, %236
  %238 = and i64 %234, %237
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %233
  %241 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %242 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %243 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @pci_scan_for_master_abort(%struct.pci_pbm_info* %241, i32 %244)
  br label %246

246:                                              ; preds = %240, %233
  %247 = load i64, i64* %12, align 8
  %248 = load i64, i64* @SCHIZO_PCIAFSR_PPERR, align 8
  %249 = load i64, i64* @SCHIZO_PCIAFSR_SPERR, align 8
  %250 = or i64 %248, %249
  %251 = and i64 %247, %250
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %246
  %254 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %255 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %256 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @pci_scan_for_parity_error(%struct.pci_pbm_info* %254, i32 %257)
  br label %259

259:                                              ; preds = %253, %246
  %260 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %260, i32* %3, align 4
  br label %261

261:                                              ; preds = %259, %56
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local i64 @upa_readq(i64) #1

declare dso_local i32 @schizo_pcierr_intr_other(%struct.pci_pbm_info*) #1

declare dso_local i32 @upa_writeq(i64, i64) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @schizo_check_iommu_error(%struct.pci_pbm_info*, i32) #1

declare dso_local i32 @pci_scan_for_target_abort(%struct.pci_pbm_info*, i32) #1

declare dso_local i32 @pci_scan_for_master_abort(%struct.pci_pbm_info*, i32) #1

declare dso_local i32 @pci_scan_for_parity_error(%struct.pci_pbm_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
