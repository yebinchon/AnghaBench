; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AdvLoadMicrocode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AdvLoadMicrocode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOPW_RAM_ADDR = common dso_local global i32 0, align 4
@ASC_IERR_MCODE_CHKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32, i32)* @AdvLoadMicrocode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AdvLoadMicrocode(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i32, align 4
  %20 = alloca i16, align 2
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @IOPW_RAM_ADDR, align 4
  %23 = call i32 @AdvWriteWordRegister(i32 %21, i32 %22, i32 0)
  store i32 506, i32* %12, align 4
  br label %24

24:                                               ; preds = %140, %5
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %143

28:                                               ; preds = %24
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 255
  br i1 %35, label %36, label %76

36:                                               ; preds = %28
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %44, %51
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %17, align 2
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %70, %36
  %55 = load i32, i32* %13, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp slt i32 %55, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %54
  %65 = load i32, i32* %7, align 4
  %66 = load i16, i16* %17, align 2
  %67 = call i32 @AdvWriteWordAutoIncLram(i32 %65, i16 zeroext %66)
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 2
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %54

73:                                               ; preds = %54
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 3
  store i32 %75, i32* %12, align 4
  br label %139

76:                                               ; preds = %28
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 254
  br i1 %83, label %84, label %109

84:                                               ; preds = %76
  %85 = load i8*, i8** %8, align 8
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = or i32 %92, %99
  %101 = trunc i32 %100 to i16
  store i16 %101, i16* %18, align 2
  %102 = load i32, i32* %7, align 4
  %103 = load i16, i16* %18, align 2
  %104 = call i32 @AdvWriteWordAutoIncLram(i32 %102, i16 zeroext %103)
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 2
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, 2
  store i32 %108, i32* %15, align 4
  br label %138

109:                                              ; preds = %76
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = mul nsw i32 %115, 2
  store i32 %116, i32* %19, align 4
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* %19, align 4
  %119 = add i32 %118, 1
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl i32 %123, 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i32, i32* %19, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = or i32 %124, %130
  %132 = trunc i32 %131 to i16
  store i16 %132, i16* %20, align 2
  %133 = load i32, i32* %7, align 4
  %134 = load i16, i16* %20, align 2
  %135 = call i32 @AdvWriteWordAutoIncLram(i32 %133, i16 zeroext %134)
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 2
  store i32 %137, i32* %15, align 4
  br label %138

138:                                              ; preds = %109, %84
  br label %139

139:                                              ; preds = %138, %73
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %24

143:                                              ; preds = %24
  %144 = load i32, i32* %15, align 4
  store i32 %144, i32* %14, align 4
  br label %145

145:                                              ; preds = %149, %143
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @AdvWriteWordAutoIncLram(i32 %150, i16 zeroext 0)
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 2
  store i32 %153, i32* %15, align 4
  br label %145

154:                                              ; preds = %145
  store i32 0, i32* %16, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @IOPW_RAM_ADDR, align 4
  %157 = call i32 @AdvWriteWordRegister(i32 %155, i32 %156, i32 0)
  store i32 0, i32* %15, align 4
  br label %158

158:                                              ; preds = %169, %154
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %158
  %163 = load i32, i32* %7, align 4
  %164 = call i64 @AdvReadWordAutoIncLram(i32 %163)
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %164
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %16, align 4
  br label %169

169:                                              ; preds = %162
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 2
  store i32 %171, i32* %15, align 4
  br label %158

172:                                              ; preds = %158
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i32, i32* @ASC_IERR_MCODE_CHKSUM, align 4
  store i32 %177, i32* %6, align 4
  br label %179

178:                                              ; preds = %172
  store i32 0, i32* %6, align 4
  br label %179

179:                                              ; preds = %178, %176
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local i32 @AdvWriteWordRegister(i32, i32, i32) #1

declare dso_local i32 @AdvWriteWordAutoIncLram(i32, i16 zeroext) #1

declare dso_local i64 @AdvReadWordAutoIncLram(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
