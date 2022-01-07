; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_ipack.c_write_ipack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_ipack.c_write_ipack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipack = type { i32, i32, i32 }

@__const.write_ipack.headr = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 1], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipack*, i32*, i32)* @write_ipack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_ipack(%struct.ipack* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ipack*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.ipack* %0, %struct.ipack** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast ([3 x i32]* @__const.write_ipack.headr to i8*), i64 12, i1 false)
  %10 = load %struct.ipack*, %struct.ipack** %4, align 8
  %11 = getelementptr inbounds %struct.ipack, %struct.ipack* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.ipack*, %struct.ipack** %4, align 8
  %16 = getelementptr inbounds %struct.ipack, %struct.ipack* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %19 = call i32 @memcpy(i32 %17, i32* %18, i32 3)
  %20 = load %struct.ipack*, %struct.ipack** %4, align 8
  %21 = getelementptr inbounds %struct.ipack, %struct.ipack* %20, i32 0, i32 0
  store i32 6, i32* %21, align 4
  br label %22

22:                                               ; preds = %14, %3
  %23 = load %struct.ipack*, %struct.ipack** %4, align 8
  %24 = getelementptr inbounds %struct.ipack, %struct.ipack* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  %28 = load %struct.ipack*, %struct.ipack** %4, align 8
  %29 = getelementptr inbounds %struct.ipack, %struct.ipack* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %22
  %33 = load %struct.ipack*, %struct.ipack** %4, align 8
  %34 = getelementptr inbounds %struct.ipack, %struct.ipack* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ipack*, %struct.ipack** %4, align 8
  %37 = getelementptr inbounds %struct.ipack, %struct.ipack* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @memcpy(i32 %39, i32* %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.ipack*, %struct.ipack** %4, align 8
  %45 = getelementptr inbounds %struct.ipack, %struct.ipack* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %87

48:                                               ; preds = %22
  %49 = load %struct.ipack*, %struct.ipack** %4, align 8
  %50 = getelementptr inbounds %struct.ipack, %struct.ipack* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ipack*, %struct.ipack** %4, align 8
  %53 = getelementptr inbounds %struct.ipack, %struct.ipack* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %51, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.ipack*, %struct.ipack** %4, align 8
  %57 = getelementptr inbounds %struct.ipack, %struct.ipack* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ipack*, %struct.ipack** %4, align 8
  %60 = getelementptr inbounds %struct.ipack, %struct.ipack* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @memcpy(i32 %62, i32* %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.ipack*, %struct.ipack** %4, align 8
  %68 = getelementptr inbounds %struct.ipack, %struct.ipack* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.ipack*, %struct.ipack** %4, align 8
  %72 = call i32 @send_ipack(%struct.ipack* %71)
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %73, %74
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %48
  %78 = load %struct.ipack*, %struct.ipack** %4, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 %83, %84
  call void @write_ipack(%struct.ipack* %78, i32* %82, i32 %85)
  br label %86

86:                                               ; preds = %77, %48
  br label %87

87:                                               ; preds = %86, %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @send_ipack(%struct.ipack*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
