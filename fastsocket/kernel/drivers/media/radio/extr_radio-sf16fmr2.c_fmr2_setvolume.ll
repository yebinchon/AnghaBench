; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-sf16fmr2.c_fmr2_setvolume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-sf16fmr2.c_fmr2_setvolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmr2 = type { i32, i32, i32 }

@__const.fmr2_setvolume.vol = private unnamed_addr constant [16 x i32] [i32 33, i32 132, i32 144, i32 260, i32 272, i32 516, i32 528, i32 1026, i32 1028, i32 1032, i32 1040, i32 2049, i32 2050, i32 2052, i32 2056, i32 2064], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fmr2*)* @fmr2_setvolume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmr2_setvolume(%struct.fmr2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fmr2*, align 8
  %4 = alloca [16 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fmr2* %0, %struct.fmr2** %3, align 8
  %8 = bitcast [16 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([16 x i32]* @__const.fmr2_setvolume.vol to i8*), i64 64, i1 false)
  %9 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %10 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 15
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %17 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 11
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %111

21:                                               ; preds = %1
  store i32 12, i32* %5, align 4
  br label %22

22:                                               ; preds = %26, %21
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %5, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %27, %28
  %30 = and i32 %29, 1
  %31 = shl i32 %30, 6
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, 4
  %34 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %35 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @outb(i32 %33, i32 %36)
  %38 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %39 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wait(i32 4, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, 36
  %44 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %45 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @outb(i32 %43, i32 %46)
  %48 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %49 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @wait(i32 4, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, 4
  %54 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %55 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @outb(i32 %53, i32 %56)
  %58 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %59 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wait(i32 4, i32 %60)
  br label %22

62:                                               ; preds = %22
  store i32 6, i32* %5, align 4
  br label %63

63:                                               ; preds = %67, %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %5, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = ashr i32 24, %68
  %70 = and i32 %69, 1
  %71 = shl i32 %70, 6
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, 4
  %74 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %75 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @outb(i32 %73, i32 %76)
  %78 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %79 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @wait(i32 4, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, 36
  %84 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %85 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @outb(i32 %83, i32 %86)
  %88 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %89 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @wait(i32 4, i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, 4
  %94 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %95 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @outb(i32 %93, i32 %96)
  %98 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %99 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @wait(i32 4, i32 %100)
  br label %63

102:                                              ; preds = %63
  %103 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %104 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @wait(i32 4, i32 %105)
  %107 = load %struct.fmr2*, %struct.fmr2** %3, align 8
  %108 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @outb(i32 20, i32 %109)
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %102, %20
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @outb(i32, i32) #2

declare dso_local i32 @wait(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
