; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_select_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_select_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbd = type { i32, i32, i64, %struct.ps2dev }
%struct.ps2dev = type { i32 }

@ATKBD_CMD_SSCANSET = common dso_local global i32 0, align 4
@ATKBD_CMD_EX_ENABLE = common dso_local global i32 0, align 4
@ATKBD_CMD_OK_GETID = common dso_local global i32 0, align 4
@ATKBD_CMD_GSCANSET = common dso_local global i32 0, align 4
@ATKBD_CMD_SETALL_MBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbd*, i32, i32)* @atkbd_select_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_select_set(%struct.atkbd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atkbd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ps2dev*, align 8
  %9 = alloca [2 x i8], align 1
  store %struct.atkbd* %0, %struct.atkbd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %11 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %10, i32 0, i32 3
  store %struct.ps2dev* %11, %struct.ps2dev** %8, align 8
  %12 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %13 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %15 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 2, i32* %4, align 4
  br label %100

19:                                               ; preds = %3
  %20 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %21 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 44193
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 3, i8* %25, align 1
  %26 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %28 = load i32, i32* @ATKBD_CMD_SSCANSET, align 4
  %29 = call i64 @ps2_command(%struct.ps2dev* %26, i8* %27, i32 %28)
  store i32 3, i32* %4, align 4
  br label %100

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 113, i8* %34, align 1
  %35 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %37 = load i32, i32* @ATKBD_CMD_EX_ENABLE, align 4
  %38 = call i64 @ps2_command(%struct.ps2dev* %35, i8* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %42 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  store i32 2, i32* %4, align 4
  br label %100

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 3
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 2, i32* %4, align 4
  br label %100

48:                                               ; preds = %44
  %49 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %50 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %51 = load i32, i32* @ATKBD_CMD_OK_GETID, align 4
  %52 = call i64 @ps2_command(%struct.ps2dev* %49, i8* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %57, 8
  %59 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %58, %61
  %63 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %64 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  store i32 2, i32* %4, align 4
  br label %100

65:                                               ; preds = %48
  %66 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 3, i8* %66, align 1
  %67 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %68 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %69 = load i32, i32* @ATKBD_CMD_SSCANSET, align 4
  %70 = call i64 @ps2_command(%struct.ps2dev* %67, i8* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 2, i32* %4, align 4
  br label %100

73:                                               ; preds = %65
  %74 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %74, align 1
  %75 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %76 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %77 = load i32, i32* @ATKBD_CMD_GSCANSET, align 4
  %78 = call i64 @ps2_command(%struct.ps2dev* %75, i8* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 2, i32* %4, align 4
  br label %100

81:                                               ; preds = %73
  %82 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp ne i32 %84, 3
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 2, i8* %87, align 1
  %88 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %89 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %90 = load i32, i32* @ATKBD_CMD_SSCANSET, align 4
  %91 = call i64 @ps2_command(%struct.ps2dev* %88, i8* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 2, i32* %4, align 4
  br label %100

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %81
  %96 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %97 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %98 = load i32, i32* @ATKBD_CMD_SETALL_MBR, align 4
  %99 = call i64 @ps2_command(%struct.ps2dev* %96, i8* %97, i32 %98)
  store i32 3, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %93, %80, %72, %54, %47, %40, %24, %18
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @ps2_command(%struct.ps2dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
