; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_report_bare_ps2_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_alps.c_alps_report_bare_ps2_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, %struct.alps_data* }
%struct.alps_data = type { %struct.input_dev* }
%struct.input_dev = type { i32 }

@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*, i8*, i32)* @alps_report_bare_ps2_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_report_bare_ps2_packet(%struct.psmouse* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alps_data*, align 8
  %8 = alloca %struct.input_dev*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 1
  %11 = load %struct.alps_data*, %struct.alps_data** %10, align 8
  store %struct.alps_data* %11, %struct.alps_data** %7, align 8
  %12 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %13 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %12, i32 0, i32 0
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %19 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %20 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %21 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 1
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 2
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 4
  %40 = trunc i32 %39 to i8
  %41 = call i32 @alps_report_buttons(%struct.psmouse* %18, %struct.input_dev* %19, i32 %22, i8 zeroext %28, i8 zeroext %34, i8 zeroext %40)
  br label %42

42:                                               ; preds = %17, %3
  %43 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %44 = load i32, i32* @REL_X, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %42
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, 4
  %60 = and i32 %59, 256
  %61 = sub nsw i32 %54, %60
  br label %63

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62, %50
  %64 = phi i32 [ %61, %50 ], [ 0, %62 ]
  %65 = trunc i32 %64 to i8
  %66 = call i32 @input_report_rel(%struct.input_dev* %43, i32 %44, i8 zeroext %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %68 = load i32, i32* @REL_Y, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %63
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl i32 %78, 3
  %80 = and i32 %79, 256
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = sub nsw i32 %80, %84
  br label %87

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86, %74
  %88 = phi i32 [ %85, %74 ], [ 0, %86 ]
  %89 = trunc i32 %88 to i8
  %90 = call i32 @input_report_rel(%struct.input_dev* %67, i32 %68, i8 zeroext %89)
  %91 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %92 = call i32 @input_sync(%struct.input_dev* %91)
  ret void
}

declare dso_local i32 @alps_report_buttons(%struct.psmouse*, %struct.input_dev*, i32, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
