; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_schizo.c___schizo_check_stc_error_pbm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_schizo.c___schizo_check_stc_error_pbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, i32, %struct.strbuf }
%struct.strbuf = type { i64 }

@SCHIZO_STC_ERR = common dso_local global i64 0, align 8
@SCHIZO_STC_TAG = common dso_local global i64 0, align 8
@SCHIZO_STC_LINE = common dso_local global i64 0, align 8
@stc_buf_lock = common dso_local global i32 0, align 4
@SCHIZO_STRBUF_CTRL_DENAB = common dso_local global i64 0, align 8
@stc_error_buf = common dso_local global i64* null, align 8
@stc_tag_buf = common dso_local global i64* null, align 8
@stc_line_buf = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"%s: STC_ERR(%d)[wr(%d)rd(%d)]\0A\00", align 1
@SCHIZO_STCERR_WRITE = common dso_local global i64 0, align 8
@SCHIZO_STCERR_READ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: STC_TAG(%d)[PA(%016lx)VA(%08lx)V(%d)R(%d)]\0A\00", align 1
@SCHIZO_STCTAG_PPN = common dso_local global i64 0, align 8
@SCHIZO_STCTAG_VPN = common dso_local global i64 0, align 8
@SCHIZO_STCTAG_VALID = common dso_local global i64 0, align 8
@SCHIZO_STCTAG_READ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"%s: STC_LINE(%d)[LIDX(%lx)SP(%lx)LADDR(%lx)EP(%lx)V(%d)FOFN(%d)]\0A\00", align 1
@SCHIZO_STCLINE_LINDX = common dso_local global i64 0, align 8
@SCHIZO_STCLINE_SPTR = common dso_local global i64 0, align 8
@SCHIZO_STCLINE_LADDR = common dso_local global i64 0, align 8
@SCHIZO_STCLINE_EPTR = common dso_local global i64 0, align 8
@SCHIZO_STCLINE_VALID = common dso_local global i64 0, align 8
@SCHIZO_STCLINE_FOFN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_pbm_info*, i32)* @__schizo_check_stc_error_pbm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__schizo_check_stc_error_pbm(%struct.pci_pbm_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_pbm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %21 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %20, i32 0, i32 2
  store %struct.strbuf* %21, %struct.strbuf** %5, align 8
  %22 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %23 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @SCHIZO_STC_ERR, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @SCHIZO_STC_TAG, align 8
  %30 = add i64 %28, %29
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @SCHIZO_STC_LINE, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %9, align 8
  %34 = call i32 @spin_lock(i32* @stc_buf_lock)
  %35 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @upa_readq(i64 %37)
  %39 = ptrtoint i8* %38 to i64
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @SCHIZO_STRBUF_CTRL_DENAB, align 8
  %42 = or i64 %40, %41
  %43 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @upa_writeq(i64 %42, i64 %45)
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %69, %2
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 128
  br i1 %49, label %50, label %72

50:                                               ; preds = %47
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 8
  %55 = add i64 %51, %54
  %56 = call i8* @upa_readq(i64 %55)
  %57 = ptrtoint i8* %56 to i64
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 8
  %62 = add i64 %58, %61
  %63 = call i32 @upa_writeq(i64 0, i64 %62)
  %64 = load i64, i64* %12, align 8
  %65 = load i64*, i64** @stc_error_buf, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64 %64, i64* %68, align 8
  br label %69

69:                                               ; preds = %50
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %47

72:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %111, %72
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 16
  br i1 %75, label %76, label %114

76:                                               ; preds = %73
  %77 = load i64, i64* %8, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 8
  %81 = add i64 %77, %80
  %82 = call i8* @upa_readq(i64 %81)
  %83 = ptrtoint i8* %82 to i64
  %84 = load i64*, i64** @stc_tag_buf, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %83, i64* %87, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 8
  %92 = add i64 %88, %91
  %93 = call i8* @upa_readq(i64 %92)
  %94 = ptrtoint i8* %93 to i64
  %95 = load i64*, i64** @stc_line_buf, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %94, i64* %98, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 8
  %103 = add i64 %99, %102
  %104 = call i32 @upa_writeq(i64 0, i64 %103)
  %105 = load i64, i64* %9, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 8
  %109 = add i64 %105, %108
  %110 = call i32 @upa_writeq(i64 0, i64 %109)
  br label %111

111:                                              ; preds = %76
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %73

114:                                              ; preds = %73
  %115 = load i64, i64* %10, align 8
  %116 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %117 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @upa_writeq(i64 %115, i64 %118)
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %239, %114
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 16
  br i1 %122, label %123, label %242

123:                                              ; preds = %120
  store i32 0, i32* %14, align 4
  %124 = load i32, i32* %11, align 4
  %125 = mul nsw i32 %124, 8
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, 8
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %164, %123
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %167

133:                                              ; preds = %129
  %134 = load i64*, i64** @stc_error_buf, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %17, align 8
  %139 = load i64, i64* %17, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %133
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  %144 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %145 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i64, i64* %17, align 8
  %149 = load i64, i64* @SCHIZO_STCERR_WRITE, align 8
  %150 = and i64 %148, %149
  %151 = icmp ne i64 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 1, i32 0
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %17, align 8
  %156 = load i64, i64* @SCHIZO_STCERR_READ, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 1, i32 0
  %161 = sext i32 %160 to i64
  %162 = call i32 (i8*, i32, i32, i64, i64, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %146, i32 %147, i64 %154, i64 %161)
  br label %163

163:                                              ; preds = %141, %133
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  br label %129

167:                                              ; preds = %129
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %238

170:                                              ; preds = %167
  %171 = load i64*, i64** @stc_tag_buf, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %18, align 8
  %176 = load i64*, i64** @stc_line_buf, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %19, align 8
  %181 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %182 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load i64, i64* %18, align 8
  %186 = load i64, i64* @SCHIZO_STCTAG_PPN, align 8
  %187 = and i64 %185, %186
  %188 = lshr i64 %187, 19
  %189 = load i64, i64* %18, align 8
  %190 = load i64, i64* @SCHIZO_STCTAG_VPN, align 8
  %191 = and i64 %189, %190
  %192 = load i64, i64* %18, align 8
  %193 = load i64, i64* @SCHIZO_STCTAG_VALID, align 8
  %194 = and i64 %192, %193
  %195 = icmp ne i64 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 1, i32 0
  %198 = load i64, i64* %18, align 8
  %199 = load i64, i64* @SCHIZO_STCTAG_READ, align 8
  %200 = and i64 %198, %199
  %201 = icmp ne i64 %200, 0
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i32 1, i32 0
  %204 = call i32 (i8*, i32, i32, i64, i64, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %183, i32 %184, i64 %188, i64 %191, i32 %197, i32 %203)
  %205 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %206 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = load i64, i64* %19, align 8
  %210 = load i64, i64* @SCHIZO_STCLINE_LINDX, align 8
  %211 = and i64 %209, %210
  %212 = lshr i64 %211, 23
  %213 = load i64, i64* %19, align 8
  %214 = load i64, i64* @SCHIZO_STCLINE_SPTR, align 8
  %215 = and i64 %213, %214
  %216 = lshr i64 %215, 13
  %217 = load i64, i64* %19, align 8
  %218 = load i64, i64* @SCHIZO_STCLINE_LADDR, align 8
  %219 = and i64 %217, %218
  %220 = lshr i64 %219, 6
  %221 = load i64, i64* %19, align 8
  %222 = load i64, i64* @SCHIZO_STCLINE_EPTR, align 8
  %223 = and i64 %221, %222
  %224 = lshr i64 %223, 0
  %225 = load i64, i64* %19, align 8
  %226 = load i64, i64* @SCHIZO_STCLINE_VALID, align 8
  %227 = and i64 %225, %226
  %228 = icmp ne i64 %227, 0
  %229 = zext i1 %228 to i64
  %230 = select i1 %228, i32 1, i32 0
  %231 = load i64, i64* %19, align 8
  %232 = load i64, i64* @SCHIZO_STCLINE_FOFN, align 8
  %233 = and i64 %231, %232
  %234 = icmp ne i64 %233, 0
  %235 = zext i1 %234 to i64
  %236 = select i1 %234, i32 1, i32 0
  %237 = call i32 (i8*, i32, i32, i64, i64, ...) @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %207, i32 %208, i64 %212, i64 %216, i64 %220, i64 %224, i32 %230, i32 %236)
  br label %238

238:                                              ; preds = %170, %167
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %11, align 4
  br label %120

242:                                              ; preds = %120
  %243 = call i32 @spin_unlock(i32* @stc_buf_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @upa_readq(i64) #1

declare dso_local i32 @upa_writeq(i64, i64) #1

declare dso_local i32 @printk(i8*, i32, i32, i64, i64, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
