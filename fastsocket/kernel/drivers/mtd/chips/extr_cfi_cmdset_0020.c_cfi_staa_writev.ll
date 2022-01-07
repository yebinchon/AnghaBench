; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_writev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 (%struct.mtd_info*, i64, i64, i64*, i8*)* }
%struct.kvec = type { i64, i8* }

@cfi_staa_writev.buffer = internal global i8* null, align 8
@ECCBUF_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.kvec*, i64, i64, i64*)* @cfi_staa_writev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_staa_writev(%struct.mtd_info* %0, %struct.kvec* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store %struct.kvec* %1, %struct.kvec** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %19 = load i64, i64* @ECCBUF_SIZE, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %194

24:                                               ; preds = %5
  %25 = load i64, i64* @ECCBUF_SIZE, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc(i64 %25, i32 %26)
  store i8* %27, i8** @cfi_staa_writev.buffer, align 8
  %28 = load i8*, i8** @cfi_staa_writev.buffer, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %194

33:                                               ; preds = %24
  store i64 0, i64* %12, align 8
  br label %34

34:                                               ; preds = %157, %33
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %160

38:                                               ; preds = %34
  %39 = load %struct.kvec*, %struct.kvec** %8, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds %struct.kvec, %struct.kvec* %39, i64 %40
  %42 = getelementptr inbounds %struct.kvec, %struct.kvec* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %17, align 8
  %44 = load %struct.kvec*, %struct.kvec** %8, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds %struct.kvec, %struct.kvec* %44, i64 %45
  %47 = getelementptr inbounds %struct.kvec, %struct.kvec* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %18, align 8
  %49 = load i64, i64* %17, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %38
  br label %157

52:                                               ; preds = %38
  %53 = load i64, i64* %16, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %112

55:                                               ; preds = %52
  %56 = load i64, i64* %16, align 8
  %57 = load i64, i64* %17, align 8
  %58 = add i64 %56, %57
  %59 = load i64, i64* @ECCBUF_SIZE, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load i8*, i8** @cfi_staa_writev.buffer, align 8
  %63 = load i64, i64* %16, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8*, i8** %18, align 8
  %66 = load i64, i64* %17, align 8
  %67 = call i32 @memcpy(i8* %64, i8* %65, i64 %66)
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* %16, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %16, align 8
  br label %157

71:                                               ; preds = %55
  %72 = load i8*, i8** @cfi_staa_writev.buffer, align 8
  %73 = load i64, i64* %16, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8*, i8** %18, align 8
  %76 = load i64, i64* @ECCBUF_SIZE, align 8
  %77 = load i64, i64* %16, align 8
  %78 = sub i64 %76, %77
  %79 = call i32 @memcpy(i8* %74, i8* %75, i64 %78)
  %80 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %81 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %80, i32 0, i32 0
  %82 = load i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)** %81, align 8
  %83 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @ECCBUF_SIZE, align 8
  %86 = load i8*, i8** @cfi_staa_writev.buffer, align 8
  %87 = call i32 %82(%struct.mtd_info* %83, i64 %84, i64 %85, i64* %14, i8* %86)
  store i32 %87, i32* %15, align 4
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %13, align 8
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %71
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* @ECCBUF_SIZE, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %71
  br label %184

98:                                               ; preds = %93
  %99 = load i64, i64* %14, align 8
  %100 = load i64, i64* %16, align 8
  %101 = sub i64 %99, %100
  %102 = load i64, i64* %17, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %17, align 8
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* %16, align 8
  %106 = sub i64 %104, %105
  %107 = load i8*, i8** %18, align 8
  %108 = getelementptr i8, i8* %107, i64 %106
  store i8* %108, i8** %18, align 8
  %109 = load i64, i64* @ECCBUF_SIZE, align 8
  %110 = load i64, i64* %10, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %10, align 8
  br label %112

112:                                              ; preds = %98, %52
  %113 = load i64, i64* %17, align 8
  %114 = call i64 @ECCBUF_DIV(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %141

116:                                              ; preds = %112
  %117 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %118 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %117, i32 0, i32 0
  %119 = load i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)** %118, align 8
  %120 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* %17, align 8
  %123 = call i64 @ECCBUF_DIV(i64 %122)
  %124 = load i8*, i8** %18, align 8
  %125 = call i32 %119(%struct.mtd_info* %120, i64 %121, i64 %123, i64* %14, i8* %124)
  store i32 %125, i32* %15, align 4
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* %13, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %13, align 8
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %116
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* %17, align 8
  %134 = call i64 @ECCBUF_DIV(i64 %133)
  %135 = icmp ne i64 %132, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %131, %116
  br label %184

137:                                              ; preds = %131
  %138 = load i64, i64* %14, align 8
  %139 = load i64, i64* %10, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %10, align 8
  br label %141

141:                                              ; preds = %137, %112
  %142 = load i64, i64* %17, align 8
  %143 = call i64 @ECCBUF_MOD(i64 %142)
  store i64 %143, i64* %16, align 8
  %144 = load i64, i64* %16, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load i8*, i8** @cfi_staa_writev.buffer, align 8
  %148 = load i64, i64* @ECCBUF_SIZE, align 8
  %149 = call i32 @memset(i8* %147, i32 255, i64 %148)
  %150 = load i8*, i8** @cfi_staa_writev.buffer, align 8
  %151 = load i8*, i8** %18, align 8
  %152 = load i64, i64* %14, align 8
  %153 = getelementptr i8, i8* %151, i64 %152
  %154 = load i64, i64* %16, align 8
  %155 = call i32 @memcpy(i8* %150, i8* %153, i64 %154)
  br label %156

156:                                              ; preds = %146, %141
  br label %157

157:                                              ; preds = %156, %61, %51
  %158 = load i64, i64* %12, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %12, align 8
  br label %34

160:                                              ; preds = %34
  %161 = load i64, i64* %16, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %183

163:                                              ; preds = %160
  %164 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %165 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %164, i32 0, i32 0
  %166 = load i32 (%struct.mtd_info*, i64, i64, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i8*)** %165, align 8
  %167 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %168 = load i64, i64* %10, align 8
  %169 = load i64, i64* %16, align 8
  %170 = load i8*, i8** @cfi_staa_writev.buffer, align 8
  %171 = call i32 %166(%struct.mtd_info* %167, i64 %168, i64 %169, i64* %14, i8* %170)
  store i32 %171, i32* %15, align 4
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %13, align 8
  %174 = add i64 %173, %172
  store i64 %174, i64* %13, align 8
  %175 = load i32, i32* %15, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %163
  %178 = load i64, i64* %14, align 8
  %179 = load i64, i64* @ECCBUF_SIZE, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %177, %163
  br label %184

182:                                              ; preds = %177
  br label %183

183:                                              ; preds = %182, %160
  br label %184

184:                                              ; preds = %183, %181, %136, %97
  %185 = load i64*, i64** %11, align 8
  %186 = icmp ne i64* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i64, i64* %13, align 8
  %189 = load i64*, i64** %11, align 8
  store i64 %188, i64* %189, align 8
  br label %190

190:                                              ; preds = %187, %184
  %191 = load i8*, i8** @cfi_staa_writev.buffer, align 8
  %192 = call i32 @kfree(i8* %191)
  %193 = load i32, i32* %15, align 4
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %190, %30, %21
  %195 = load i32, i32* %6, align 4
  ret i32 %195
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @ECCBUF_DIV(i64) #1

declare dso_local i64 @ECCBUF_MOD(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
