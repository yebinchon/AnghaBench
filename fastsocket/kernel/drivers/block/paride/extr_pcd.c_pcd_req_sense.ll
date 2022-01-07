; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_req_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_req_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcd_unit = type { i32, i32, i32 }

@__const.pcd_req_sense.rs_cmd = private unnamed_addr constant [12 x i8] c"\03\00\00\00\10\00\00\00\00\00\00\00", align 1
@.str = private unnamed_addr constant [14 x i8] c"Request sense\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: %s: Sense key: %x, ASC: %x, ASQ: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcd_unit*, i8*)* @pcd_req_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcd_req_sense(%struct.pcd_unit* %0, i8* %1) #0 {
  %3 = alloca %struct.pcd_unit*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [12 x i8], align 1
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pcd_unit* %0, %struct.pcd_unit** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = bitcast [12 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.pcd_req_sense.rs_cmd, i32 0, i32 0), i64 12, i1 false)
  %10 = load %struct.pcd_unit*, %struct.pcd_unit** %3, align 8
  %11 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %12 = call i32 @pcd_command(%struct.pcd_unit* %10, i8* %11, i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %7, align 4
  %13 = call i32 @mdelay(i32 1)
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.pcd_unit*, %struct.pcd_unit** %3, align 8
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %19 = call i32 @pcd_completion(%struct.pcd_unit* %17, i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.pcd_unit*, %struct.pcd_unit** %3, align 8
  %22 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 4
  store i32 2, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %63, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load %struct.pcd_unit*, %struct.pcd_unit** %3, align 8
  %30 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  %34 = load i8, i8* %33, align 2
  %35 = sext i8 %34 to i32
  %36 = and i32 %35, 15
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 12
  %39 = load i8, i8* %38, align 4
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 13
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %31, i8* %32, i8 signext %37, i8 signext %39, i8 signext %41)
  br label %43

43:                                               ; preds = %28, %25
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  %45 = load i8, i8* %44, align 2
  %46 = sext i8 %45 to i32
  %47 = and i32 %46, 15
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 12
  %50 = load i8, i8* %49, align 4
  %51 = sext i8 %50 to i32
  %52 = and i32 %51, 255
  %53 = shl i32 %52, 8
  %54 = or i32 %48, %53
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 13
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = and i32 %57, 255
  %59 = shl i32 %58, 16
  %60 = or i32 %54, %59
  %61 = load %struct.pcd_unit*, %struct.pcd_unit** %3, align 8
  %62 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %43, %20
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 6
  br i1 %68, label %69, label %72

69:                                               ; preds = %66, %63
  %70 = load %struct.pcd_unit*, %struct.pcd_unit** %3, align 8
  %71 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pcd_command(%struct.pcd_unit*, i8*, i32, i8*) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @pcd_completion(%struct.pcd_unit*, i8*, i8*) #2

declare dso_local i32 @printk(i8*, i32, i8*, i8 signext, i8 signext, i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
