; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_copy_from_bounce_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_storvsc_drv.c_copy_from_bounce_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, %struct.scatterlist*, i32, i32)* @copy_from_bounce_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_from_bounce_buffer(%struct.scatterlist* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @local_irq_save(i64 %21)
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %178, %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %181

27:                                               ; preds = %23
  %28 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @sg_kmap_atomic(%struct.scatterlist* %28, i32 %29)
  %31 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %31, i64 %33
  %35 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %30, %36
  store i64 %37, i64* %19, align 8
  %38 = load i64, i64* %19, align 8
  store i64 %38, i64* %13, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %39, i64 %41
  %43 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %15, align 4
  %45 = load i64, i64* %18, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %27
  %48 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @sg_kmap_atomic(%struct.scatterlist* %48, i32 %49)
  store i64 %50, i64* %18, align 8
  br label %51

51:                                               ; preds = %47, %27
  br label %52

52:                                               ; preds = %167, %51
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %168

55:                                               ; preds = %52
  %56 = load i64, i64* %18, align 8
  %57 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %57, i64 %59
  %61 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %56, %62
  store i64 %63, i64* %12, align 8
  %64 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %64, i64 %66
  %68 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = zext i32 %69 to i64
  %71 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %71, i64 %73
  %75 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %70, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @min(i32 %79, i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load i64, i64* %13, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = load i64, i64* %12, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @memcpy(i8* %83, i8* %85, i32 %86)
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = add i32 %89, %88
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %16, align 4
  %92 = zext i32 %91 to i64
  %93 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %93, i64 %95
  %97 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, %92
  store i64 %99, i64* %97, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %15, align 4
  %102 = sub i32 %101, %100
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %16, align 4
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* %13, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %13, align 8
  %107 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %107, i64 %109
  %111 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %113, i64 %115
  %117 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = zext i32 %118 to i64
  %120 = icmp eq i64 %112, %119
  br i1 %120, label %121, label %155

121:                                              ; preds = %55
  %122 = load i64, i64* %18, align 8
  %123 = call i32 @sg_kunmap_atomic(i64 %122)
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %121
  %130 = load i64, i64* %19, align 8
  %131 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %131, i64 %133
  %135 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = sub i64 %130, %136
  %138 = call i32 @sg_kunmap_atomic(i64 %137)
  %139 = load i64, i64* %20, align 8
  %140 = call i32 @local_irq_restore(i64 %139)
  %141 = load i32, i32* %17, align 4
  store i32 %141, i32* %5, align 4
  br label %185

142:                                              ; preds = %121
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %8, align 4
  %148 = sub i32 %147, 1
  %149 = icmp ne i32 %146, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %145, %142
  %151 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %152 = load i32, i32* %11, align 4
  %153 = call i64 @sg_kmap_atomic(%struct.scatterlist* %151, i32 %152)
  store i64 %153, i64* %18, align 8
  br label %154

154:                                              ; preds = %150, %145
  br label %167

155:                                              ; preds = %55
  %156 = load i32, i32* %15, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %8, align 4
  %161 = sub i32 %160, 1
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i64, i64* %18, align 8
  %165 = call i32 @sg_kunmap_atomic(i64 %164)
  br label %166

166:                                              ; preds = %163, %158, %155
  br label %167

167:                                              ; preds = %166, %154
  br label %52

168:                                              ; preds = %52
  %169 = load i64, i64* %19, align 8
  %170 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %170, i64 %172
  %174 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = sub i64 %169, %175
  %177 = call i32 @sg_kunmap_atomic(i64 %176)
  br label %178

178:                                              ; preds = %168
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  br label %23

181:                                              ; preds = %23
  %182 = load i64, i64* %20, align 8
  %183 = call i32 @local_irq_restore(i64 %182)
  %184 = load i32, i32* %17, align 4
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %181, %129
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @sg_kmap_atomic(%struct.scatterlist*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sg_kunmap_atomic(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
