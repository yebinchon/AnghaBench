; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_get_fcode_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_get_fcode_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i8* }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*, i64)* @qla2x00_get_fcode_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_get_fcode_version(%struct.qla_hw_data* %0, i64 %1) #0 {
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @memset(i8* %16, i32 0, i32 8)
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = add nsw i64 %20, 11
  %22 = call signext i8 @qla2x00_read_flash_byte(%struct.qla_hw_data* %19, i64 %21)
  %23 = sext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = add nsw i64 %26, 10
  %28 = call signext i8 @qla2x00_read_flash_byte(%struct.qla_hw_data* %25, i64 %27)
  %29 = sext i8 %28 to i32
  %30 = or i32 %24, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %18, %31
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, 256
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %2
  store i8 0, i8* %10, align 1
  %36 = load i64, i64* %6, align 8
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %77, %35
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8, i8* %10, align 1
  %43 = icmp ne i8 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ false, %37 ], [ %44, %41 ]
  br i1 %46, label %47, label %78

47:                                               ; preds = %45
  %48 = load i64, i64* %8, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %8, align 8
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call signext i8 @qla2x00_read_flash_byte(%struct.qla_hw_data* %50, i64 %51)
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 47
  br i1 %54, label %55, label %77

55:                                               ; preds = %47
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %57 = load i64, i64* %8, align 8
  %58 = add nsw i64 %57, 2
  %59 = call signext i8 @qla2x00_read_flash_byte(%struct.qla_hw_data* %56, i64 %58)
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 47
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i8, i8* %10, align 1
  %64 = add i8 %63, 1
  store i8 %64, i8* %10, align 1
  br label %76

65:                                               ; preds = %55
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %67 = load i64, i64* %8, align 8
  %68 = add nsw i64 %67, 3
  %69 = call signext i8 @qla2x00_read_flash_byte(%struct.qla_hw_data* %66, i64 %68)
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 47
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i8, i8* %10, align 1
  %74 = add i8 %73, 1
  store i8 %74, i8* %10, align 1
  br label %75

75:                                               ; preds = %72, %65
  br label %76

76:                                               ; preds = %75, %62
  br label %77

77:                                               ; preds = %76, %47
  br label %37

78:                                               ; preds = %45
  %79 = load i8, i8* %10, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  br label %178

82:                                               ; preds = %78
  store i8 0, i8* %10, align 1
  br label %83

83:                                               ; preds = %104, %82
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp sgt i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i8, i8* %10, align 1
  %89 = icmp ne i8 %88, 0
  %90 = xor i1 %89, true
  br label %91

91:                                               ; preds = %87, %83
  %92 = phi i1 [ false, %83 ], [ %90, %87 ]
  br i1 %92, label %93, label %105

93:                                               ; preds = %91
  %94 = load i64, i64* %8, align 8
  %95 = add nsw i64 %94, -1
  store i64 %95, i64* %8, align 8
  %96 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call signext i8 @qla2x00_read_flash_byte(%struct.qla_hw_data* %96, i64 %97)
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 32
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i8, i8* %10, align 1
  %103 = add i8 %102, 1
  store i8 %103, i8* %10, align 1
  br label %104

104:                                              ; preds = %101, %93
  br label %83

105:                                              ; preds = %91
  %106 = load i8, i8* %10, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  br label %178

109:                                              ; preds = %105
  %110 = load i64, i64* %8, align 8
  %111 = sub nsw i64 %110, 1
  store i64 %111, i64* %9, align 8
  store i8 0, i8* %10, align 1
  br label %112

112:                                              ; preds = %142, %109
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %6, align 8
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i8, i8* %10, align 1
  %118 = icmp ne i8 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %116, %112
  %121 = phi i1 [ false, %112 ], [ %119, %116 ]
  br i1 %121, label %122, label %143

122:                                              ; preds = %120
  %123 = load i64, i64* %8, align 8
  %124 = add nsw i64 %123, -1
  store i64 %124, i64* %8, align 8
  %125 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call signext i8 @qla2x00_read_flash_byte(%struct.qla_hw_data* %125, i64 %126)
  store i8 %127, i8* %11, align 1
  %128 = load i8, i8* %11, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 32
  br i1 %130, label %139, label %131

131:                                              ; preds = %122
  %132 = load i8, i8* %11, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 13
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i8, i8* %11, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 16
  br i1 %138, label %139, label %142

139:                                              ; preds = %135, %131, %122
  %140 = load i8, i8* %10, align 1
  %141 = add i8 %140, 1
  store i8 %141, i8* %10, align 1
  br label %142

142:                                              ; preds = %139, %135
  br label %112

143:                                              ; preds = %120
  %144 = load i8, i8* %10, align 1
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  br label %178

147:                                              ; preds = %143
  %148 = load i64, i64* %8, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %8, align 8
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* %8, align 8
  %152 = sub nsw i64 %150, %151
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %177

154:                                              ; preds = %147
  %155 = load i64, i64* %9, align 8
  %156 = load i64, i64* %8, align 8
  %157 = sub nsw i64 %155, %156
  %158 = icmp ult i64 %157, 8
  br i1 %158, label %159, label %177

159:                                              ; preds = %154
  %160 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %161 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  store i8* %162, i8** %12, align 8
  br label %163

163:                                              ; preds = %167, %159
  %164 = load i64, i64* %8, align 8
  %165 = load i64, i64* %9, align 8
  %166 = icmp sle i64 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %163
  %168 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %169 = load i64, i64* %8, align 8
  %170 = call signext i8 @qla2x00_read_flash_byte(%struct.qla_hw_data* %168, i64 %169)
  %171 = load i8*, i8** %12, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %12, align 8
  store i8 %170, i8* %171, align 1
  %173 = load i64, i64* %8, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %8, align 8
  br label %163

175:                                              ; preds = %163
  %176 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %175, %154, %147
  br label %178

178:                                              ; preds = %177, %146, %108, %81
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @QLA_SUCCESS, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %184 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @memset(i8* %185, i32 0, i32 8)
  br label %187

187:                                              ; preds = %182, %178
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local signext i8 @qla2x00_read_flash_byte(%struct.qla_hw_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
