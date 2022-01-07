; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_conex.c_setbrightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_conex.c_setbrightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32 }

@__const.setbrightness.regE5cbx = private unnamed_addr constant [8 x i32] [i32 136, i32 0, i32 212, i32 1, i32 136, i32 1, i32 1, i32 1], align 16
@regE5c = common dso_local global i32* null, align 8
@reg10 = common dso_local global i32* null, align 8
@reg70 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setbrightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setbrightness(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %3, align 8
  %10 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([8 x i32]* @__const.setbrightness.regE5cbx to i8*), i64 32, i1 false)
  %11 = load %struct.sd*, %struct.sd** %3, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  store i32 %14, i32* %15, align 8
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %18 = call i32 @reg_w(%struct.gspca_dev* %16, i32 229, i32* %17, i32 8)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = call i32 @reg_r(%struct.gspca_dev* %19, i32 232, i32 8)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = load i32*, i32** @regE5c, align 8
  %23 = call i32 @reg_w(%struct.gspca_dev* %21, i32 229, i32* %22, i32 4)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = call i32 @reg_r(%struct.gspca_dev* %24, i32 232, i32 1)
  %26 = load %struct.sd*, %struct.sd** %3, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 119, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %34 = call i32 @reg_w(%struct.gspca_dev* %32, i32 81, i32* %33, i32 2)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = load i32*, i32** @reg10, align 8
  %37 = call i32 @reg_w(%struct.gspca_dev* %35, i32 16, i32* %36, i32 2)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = load i32, i32* @reg70, align 4
  %40 = call i32 @reg_w_val(%struct.gspca_dev* %38, i32 112, i32 %39)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #2

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #2

declare dso_local i32 @reg_w_val(%struct.gspca_dev*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
