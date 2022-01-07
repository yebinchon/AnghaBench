; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_copy_vbi_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_copy_vbi_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbi_data = type { i32, i32, %struct.TYPE_2__*, %struct.front_face* }
%struct.TYPE_2__ = type { i64 }
%struct.front_face = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vbi_data*, i8*, i32)* @copy_vbi_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_vbi_data(%struct.vbi_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.vbi_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.front_face*, align 8
  %8 = alloca i8*, align 8
  store %struct.vbi_data* %0, %struct.vbi_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.vbi_data*, %struct.vbi_data** %4, align 8
  %10 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %9, i32 0, i32 3
  %11 = load %struct.front_face*, %struct.front_face** %10, align 8
  store %struct.front_face* %11, %struct.front_face** %7, align 8
  %12 = load %struct.front_face*, %struct.front_face** %7, align 8
  %13 = icmp ne %struct.front_face* %12, null
  br i1 %13, label %14, label %47

14:                                               ; preds = %3
  %15 = load %struct.front_face*, %struct.front_face** %7, align 8
  %16 = call i64 @get_frame(%struct.front_face* %15, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = load %struct.front_face*, %struct.front_face** %7, align 8
  %20 = getelementptr inbounds %struct.front_face, %struct.front_face* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @videobuf_to_vmalloc(i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load %struct.vbi_data*, %struct.vbi_data** %4, align 8
  %24 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load %struct.vbi_data*, %struct.vbi_data** %4, align 8
  %31 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %32, 2
  %34 = load i8*, i8** %8, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %8, align 8
  br label %37

37:                                               ; preds = %29, %18
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.vbi_data*, %struct.vbi_data** %4, align 8
  %40 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @memcpy(i8* %43, i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %37, %14, %3
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.vbi_data*, %struct.vbi_data** %4, align 8
  %50 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %51, %48
  store i32 %52, i32* %50, align 4
  ret void
}

declare dso_local i64 @get_frame(%struct.front_face*, i32*) #1

declare dso_local i8* @videobuf_to_vmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
