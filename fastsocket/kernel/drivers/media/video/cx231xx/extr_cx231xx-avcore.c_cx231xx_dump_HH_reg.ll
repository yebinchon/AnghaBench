; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_dump_HH_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_dump_HH_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"reg0x%x=0x%x\0A\00", align 1
@AFE_CTRL_C2HH_SRC_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"AFE_CTRL_C2HH_SRC_CTRL=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_dump_HH_reg(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 1157649296, i32* %4, align 4
  %6 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @vid_blk_write_word(%struct.cx231xx* %6, i32 260, i32 %7)
  store i32 %8, i32* %3, align 4
  store i32 256, i32* %5, align 4
  br label %9

9:                                                ; preds = %21, %1
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 320
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @vid_blk_read_word(%struct.cx231xx* %13, i32 %14, i32* %4)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i8*, i32, ...) @cx231xx_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 3
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %9

24:                                               ; preds = %9
  store i32 768, i32* %5, align 4
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 1024
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @vid_blk_read_word(%struct.cx231xx* %29, i32 %30, i32* %4)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i8*, i32, ...) @cx231xx_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 3
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %25

40:                                               ; preds = %25
  store i32 1024, i32* %5, align 4
  br label %41

41:                                               ; preds = %53, %40
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 1088
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @vid_blk_read_word(%struct.cx231xx* %45, i32 %46, i32* %4)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i8*, i32, ...) @cx231xx_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 3
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %41

56:                                               ; preds = %41
  %57 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %58 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %59 = call i32 @vid_blk_read_word(%struct.cx231xx* %57, i32 %58, i32* %4)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i8*, i32, ...) @cx231xx_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %63 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %64 = call i32 @vid_blk_write_word(%struct.cx231xx* %62, i32 %63, i32 1149621136)
  %65 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %66 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %67 = call i32 @vid_blk_read_word(%struct.cx231xx* %65, i32 %66, i32* %4)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (i8*, i32, ...) @cx231xx_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  ret void
}

declare dso_local i32 @vid_blk_write_word(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @vid_blk_read_word(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @cx231xx_info(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
