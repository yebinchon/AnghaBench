; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bsd_comp.c_bsd_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bsd_comp.c_bsd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsd_db = type { i32, i32, i32, i32, i32, i32*, i8* }

@CI_BSD_COMPRESS = common dso_local global i8 0, align 1
@BSD_CURRENT_VERSION = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @bsd_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bsd_alloc(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bsd_db*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %36, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @CI_BSD_COMPRESS, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %36, label %23

23:                                               ; preds = %15
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @BSD_VERSION(i8 zeroext %32)
  %34 = load i64, i64* @BSD_CURRENT_VERSION, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %23, %15, %3
  store i8* null, i8** %4, align 8
  br label %118

37:                                               ; preds = %29
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @BSD_NBITS(i8 zeroext %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %48 [
    i32 9, label %43
    i32 10, label %43
    i32 11, label %43
    i32 12, label %43
    i32 13, label %44
    i32 14, label %45
    i32 15, label %46
    i32 16, label %47
  ]

43:                                               ; preds = %37, %37, %37, %37
  store i32 5003, i32* %9, align 4
  store i32 4, i32* %10, align 4
  br label %49

44:                                               ; preds = %37
  store i32 9001, i32* %9, align 4
  store i32 5, i32* %10, align 4
  br label %49

45:                                               ; preds = %37
  store i32 18013, i32* %9, align 4
  store i32 6, i32* %10, align 4
  br label %49

46:                                               ; preds = %37
  store i32 35023, i32* %9, align 4
  store i32 7, i32* %10, align 4
  br label %49

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %37, %47
  store i8* null, i8** %4, align 8
  br label %118

49:                                               ; preds = %46, %45, %44, %43
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @MAXCODE(i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.bsd_db* @kzalloc(i32 40, i32 %52)
  store %struct.bsd_db* %53, %struct.bsd_db** %12, align 8
  %54 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %55 = icmp ne %struct.bsd_db* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i8* null, i8** %4, align 8
  br label %118

57:                                               ; preds = %49
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i8* @vmalloc(i32 %61)
  %63 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %64 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  %65 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %66 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %65, i32 0, i32 6
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %57
  %70 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %71 = call i32 @bsd_free(%struct.bsd_db* %70)
  store i8* null, i8** %4, align 8
  br label %118

72:                                               ; preds = %57
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %77 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %76, i32 0, i32 5
  store i32* null, i32** %77, align 8
  br label %96

78:                                               ; preds = %72
  %79 = load i32, i32* %11, align 4
  %80 = add i32 %79, 1
  %81 = zext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = call i8* @vmalloc(i32 %83)
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %87 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %86, i32 0, i32 5
  store i32* %85, i32** %87, align 8
  %88 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %89 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %78
  %93 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %94 = call i32 @bsd_free(%struct.bsd_db* %93)
  store i8* null, i8** %4, align 8
  br label %118

95:                                               ; preds = %78
  br label %96

96:                                               ; preds = %95, %75
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = mul i64 4, %98
  %100 = add i64 40, %99
  %101 = trunc i64 %100 to i32
  %102 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %103 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %106 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %109 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %112 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %115 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %117 = bitcast %struct.bsd_db* %116 to i8*
  store i8* %117, i8** %4, align 8
  br label %118

118:                                              ; preds = %96, %92, %69, %56, %48, %36
  %119 = load i8*, i8** %4, align 8
  ret i8* %119
}

declare dso_local i64 @BSD_VERSION(i8 zeroext) #1

declare dso_local i32 @BSD_NBITS(i8 zeroext) #1

declare dso_local i32 @MAXCODE(i32) #1

declare dso_local %struct.bsd_db* @kzalloc(i32, i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @bsd_free(%struct.bsd_db*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
