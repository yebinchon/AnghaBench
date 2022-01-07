; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_delete_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_delete_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32, i16, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.vc_data*, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @delete_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_char(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i16, align 2
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %9 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %12 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i16*
  store i16* %14, i16** %6, align 8
  br label %15

15:                                               ; preds = %24, %2
  %16 = load i32, i32* %5, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sub i32 %20, %21
  %23 = icmp ule i32 %17, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  %25 = load i16*, i16** %6, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %25, i64 %27
  %29 = call i32 @scr_readw(i16* %28)
  %30 = load i16*, i16** %6, align 8
  %31 = call i32 @scr_writew(i32 %29, i16* %30)
  %32 = load i16*, i16** %6, align 8
  %33 = getelementptr inbounds i16, i16* %32, i32 1
  store i16* %33, i16** %6, align 8
  br label %15

34:                                               ; preds = %15
  %35 = load i16*, i16** %6, align 8
  %36 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = mul i32 %39, 2
  %41 = call i32 @scr_memsetw(i16* %35, i32 %38, i32 %40)
  %42 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %43 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  %44 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %45 = call i64 @DO_UPDATE(%struct.vc_data* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %116

47:                                               ; preds = %34
  %48 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 3
  %50 = load i16, i16* %49, align 4
  store i16 %50, i16* %7, align 2
  %51 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %52 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %51, i32 0, i32 5
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (%struct.vc_data*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32, i32, i32, i32)** %54, align 8
  %56 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %57 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %61 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = add i32 %62, %63
  %65 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %69 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %72 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %75 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub i32 %73, %76
  %78 = load i32, i32* %4, align 4
  %79 = sub i32 %77, %78
  %80 = call i32 %55(%struct.vc_data* %56, i32 %59, i32 %64, i32 %67, i32 %70, i32 1, i32 %79)
  %81 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %82 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 8
  %85 = trunc i32 %84 to i16
  %86 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %87 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %86, i32 0, i32 3
  store i16 %85, i16* %87, align 4
  br label %88

88:                                               ; preds = %92, %47
  %89 = load i32, i32* %4, align 4
  %90 = add i32 %89, -1
  store i32 %90, i32* %4, align 4
  %91 = icmp ne i32 %89, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %94 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %93, i32 0, i32 5
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32 (%struct.vc_data*, i32, i32, i32)*, i32 (%struct.vc_data*, i32, i32, i32)** %96, align 8
  %98 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %99 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %100 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %103 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %106 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sub i32 %107, 1
  %109 = load i32, i32* %4, align 4
  %110 = sub i32 %108, %109
  %111 = call i32 %97(%struct.vc_data* %98, i32 %101, i32 %104, i32 %110)
  br label %88

112:                                              ; preds = %88
  %113 = load i16, i16* %7, align 2
  %114 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %115 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %114, i32 0, i32 3
  store i16 %113, i16* %115, align 4
  br label %116

116:                                              ; preds = %112, %34
  ret void
}

declare dso_local i32 @scr_writew(i32, i16*) #1

declare dso_local i32 @scr_readw(i16*) #1

declare dso_local i32 @scr_memsetw(i16*, i32, i32) #1

declare dso_local i64 @DO_UPDATE(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
