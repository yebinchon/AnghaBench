; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_report_eu_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_report_eu_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_desc = type { i32 }
%struct.talitos_private = type { i64 }

@DESC_HDR_SEL0_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"AFEUISR 0x%08x_%08x\0A\00", align 1
@TALITOS_AFEUISR = common dso_local global i64 0, align 8
@TALITOS_AFEUISR_LO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"DEUISR 0x%08x_%08x\0A\00", align 1
@TALITOS_DEUISR = common dso_local global i64 0, align 8
@TALITOS_DEUISR_LO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"MDEUISR 0x%08x_%08x\0A\00", align 1
@TALITOS_MDEUISR = common dso_local global i64 0, align 8
@TALITOS_MDEUISR_LO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"RNGUISR 0x%08x_%08x\0A\00", align 1
@TALITOS_RNGUISR = common dso_local global i64 0, align 8
@TALITOS_RNGUISR_LO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"PKEUISR 0x%08x_%08x\0A\00", align 1
@TALITOS_PKEUISR = common dso_local global i64 0, align 8
@TALITOS_PKEUISR_LO = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"AESUISR 0x%08x_%08x\0A\00", align 1
@TALITOS_AESUISR = common dso_local global i64 0, align 8
@TALITOS_AESUISR_LO = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"CRCUISR 0x%08x_%08x\0A\00", align 1
@TALITOS_CRCUISR = common dso_local global i64 0, align 8
@TALITOS_CRCUISR_LO = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"KEUISR 0x%08x_%08x\0A\00", align 1
@TALITOS_KEUISR = common dso_local global i64 0, align 8
@TALITOS_KEUISR_LO = common dso_local global i64 0, align 8
@DESC_HDR_SEL1_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"DESCBUF 0x%08x_%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, %struct.talitos_desc*)* @report_eu_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_eu_error(%struct.device* %0, i32 %1, %struct.talitos_desc* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.talitos_desc*, align 8
  %7 = alloca %struct.talitos_private*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.talitos_desc* %2, %struct.talitos_desc** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %9)
  store %struct.talitos_private* %10, %struct.talitos_private** %7, align 8
  %11 = load %struct.talitos_desc*, %struct.talitos_desc** %6, align 8
  %12 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DESC_HDR_SEL0_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %136 [
    i32 138, label %16
    i32 136, label %31
    i32 134, label %46
    i32 133, label %46
    i32 131, label %61
    i32 132, label %76
    i32 139, label %91
    i32 137, label %106
    i32 135, label %121
  ]

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %19 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TALITOS_AFEUISR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @in_be32(i64 %22)
  %24 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %25 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TALITOS_AFEUISR_LO, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @in_be32(i64 %28)
  %30 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %29)
  br label %136

31:                                               ; preds = %3
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %34 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TALITOS_DEUISR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @in_be32(i64 %37)
  %39 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %40 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TALITOS_DEUISR_LO, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @in_be32(i64 %43)
  %45 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %44)
  br label %136

46:                                               ; preds = %3, %3
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %49 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TALITOS_MDEUISR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @in_be32(i64 %52)
  %54 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %55 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TALITOS_MDEUISR_LO, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @in_be32(i64 %58)
  %60 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %59)
  br label %136

61:                                               ; preds = %3
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %64 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TALITOS_RNGUISR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @in_be32(i64 %67)
  %69 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %70 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TALITOS_RNGUISR_LO, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @in_be32(i64 %73)
  %75 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %74)
  br label %136

76:                                               ; preds = %3
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %79 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TALITOS_PKEUISR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @in_be32(i64 %82)
  %84 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %85 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TALITOS_PKEUISR_LO, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @in_be32(i64 %88)
  %90 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %83, i32 %89)
  br label %136

91:                                               ; preds = %3
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %94 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TALITOS_AESUISR, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @in_be32(i64 %97)
  %99 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %100 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TALITOS_AESUISR_LO, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @in_be32(i64 %103)
  %105 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %98, i32 %104)
  br label %136

106:                                              ; preds = %3
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %109 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @TALITOS_CRCUISR, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @in_be32(i64 %112)
  %114 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %115 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TALITOS_CRCUISR_LO, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @in_be32(i64 %118)
  %120 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %113, i32 %119)
  br label %136

121:                                              ; preds = %3
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %124 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TALITOS_KEUISR, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @in_be32(i64 %127)
  %129 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %130 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @TALITOS_KEUISR_LO, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @in_be32(i64 %133)
  %135 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %128, i32 %134)
  br label %136

136:                                              ; preds = %3, %121, %106, %91, %76, %61, %46, %31, %16
  %137 = load %struct.talitos_desc*, %struct.talitos_desc** %6, align 8
  %138 = getelementptr inbounds %struct.talitos_desc, %struct.talitos_desc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @DESC_HDR_SEL1_MASK, align 4
  %141 = and i32 %139, %140
  switch i32 %141, label %172 [
    i32 129, label %142
    i32 128, label %142
    i32 130, label %157
  ]

142:                                              ; preds = %136, %136
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %145 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @TALITOS_MDEUISR, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @in_be32(i64 %148)
  %150 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %151 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @TALITOS_MDEUISR_LO, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @in_be32(i64 %154)
  %156 = call i32 @dev_err(%struct.device* %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %149, i32 %155)
  br label %172

157:                                              ; preds = %136
  %158 = load %struct.device*, %struct.device** %4, align 8
  %159 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %160 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @TALITOS_CRCUISR, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @in_be32(i64 %163)
  %165 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %166 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @TALITOS_CRCUISR_LO, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @in_be32(i64 %169)
  %171 = call i32 @dev_err(%struct.device* %158, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %164, i32 %170)
  br label %172

172:                                              ; preds = %136, %157, %142
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %201, %172
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %174, 8
  br i1 %175, label %176, label %204

176:                                              ; preds = %173
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %179 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = call i64 @TALITOS_DESCBUF(i32 %181)
  %183 = add nsw i64 %180, %182
  %184 = load i32, i32* %8, align 4
  %185 = mul nsw i32 8, %184
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %183, %186
  %188 = call i32 @in_be32(i64 %187)
  %189 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %190 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = call i64 @TALITOS_DESCBUF_LO(i32 %192)
  %194 = add nsw i64 %191, %193
  %195 = load i32, i32* %8, align 4
  %196 = mul nsw i32 8, %195
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %194, %197
  %199 = call i32 @in_be32(i64 %198)
  %200 = call i32 @dev_err(%struct.device* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %188, i32 %199)
  br label %201

201:                                              ; preds = %176
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %173

204:                                              ; preds = %173
  ret void
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i64 @TALITOS_DESCBUF(i32) #1

declare dso_local i64 @TALITOS_DESCBUF_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
