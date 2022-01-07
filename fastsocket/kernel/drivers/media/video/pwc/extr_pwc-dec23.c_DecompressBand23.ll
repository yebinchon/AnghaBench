; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-dec23.c_DecompressBand23.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-dec23.c_DecompressBand23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_dec23_private = type { i8*, i8**, i8**, i8**, i8**, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwc_dec23_private*, i8*, i8*, i8*, i8*, i32, i32)* @DecompressBand23 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecompressBand23(%struct.pwc_dec23_private* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.pwc_dec23_private*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.pwc_dec23_private* %0, %struct.pwc_dec23_private** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %20 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %19, i32 0, i32 8
  store i64 0, i64* %20, align 8
  %21 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %22 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %21, i32 0, i32 7
  store i64 0, i64* %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %26 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @get_nbits(%struct.pwc_dec23_private* %27, i32 4, i32 %28)
  %30 = load i32, i32* %13, align 4
  %31 = udiv i32 %30, 4
  store i32 %31, i32* %16, align 4
  %32 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %33 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %32, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %17, align 8
  %39 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %40 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %39, i32 0, i32 2
  %41 = load i8**, i8*** %40, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %18, align 8
  br label %46

46:                                               ; preds = %49, %7
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %51 = load i8*, i8** %17, align 8
  %52 = load i8*, i8** %18, align 8
  %53 = call i32 @decode_block(%struct.pwc_dec23_private* %50, i8* %51, i8* %52)
  %54 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %55 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %60 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @copy_image_block_Y(i32 %56, i8* %57, i32 %58, i32 %61)
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  store i8* %64, i8** %10, align 8
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %16, align 4
  br label %46

67:                                               ; preds = %46
  %68 = load i32, i32* %13, align 4
  %69 = udiv i32 %68, 8
  store i32 %69, i32* %16, align 4
  %70 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %71 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %70, i32 0, i32 3
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %17, align 8
  %77 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %78 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %77, i32 0, i32 4
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %18, align 8
  br label %84

84:                                               ; preds = %87, %67
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %122

87:                                               ; preds = %84
  %88 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %89 = load i8*, i8** %17, align 8
  %90 = load i8*, i8** %18, align 8
  %91 = call i32 @decode_block(%struct.pwc_dec23_private* %88, i8* %89, i8* %90)
  %92 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %93 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* %14, align 4
  %97 = udiv i32 %96, 2
  %98 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %99 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @copy_image_block_CrCb(i32 %94, i8* %95, i32 %97, i32 %100)
  %102 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %103 = load i8*, i8** %17, align 8
  %104 = load i8*, i8** %18, align 8
  %105 = call i32 @decode_block(%struct.pwc_dec23_private* %102, i8* %103, i8* %104)
  %106 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %107 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %12, align 8
  %110 = load i32, i32* %14, align 4
  %111 = udiv i32 %110, 2
  %112 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %8, align 8
  %113 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @copy_image_block_CrCb(i32 %108, i8* %109, i32 %111, i32 %114)
  %116 = load i8*, i8** %12, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 8
  store i8* %117, i8** %12, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 8
  store i8* %119, i8** %11, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sub nsw i32 %120, 2
  store i32 %121, i32* %16, align 4
  br label %84

122:                                              ; preds = %84
  ret void
}

declare dso_local i32 @get_nbits(%struct.pwc_dec23_private*, i32, i32) #1

declare dso_local i32 @decode_block(%struct.pwc_dec23_private*, i8*, i8*) #1

declare dso_local i32 @copy_image_block_Y(i32, i8*, i32, i32) #1

declare dso_local i32 @copy_image_block_CrCb(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
