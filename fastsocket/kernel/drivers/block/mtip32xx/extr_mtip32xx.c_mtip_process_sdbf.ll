; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_process_sdbf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_process_sdbf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, %struct.TYPE_2__*, %struct.mtip_port* }
%struct.TYPE_2__ = type { i32 }
%struct.mtip_port = type { %struct.mtip_cmd*, i32* }
%struct.mtip_cmd = type { i32, i32 (%struct.mtip_port*, i32, i32, i32)* }

@MTIP_TAG_INTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Null completion for tag %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*)* @mtip_process_sdbf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_process_sdbf(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca %struct.mtip_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtip_cmd*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %9 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %10 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %9, i32 0, i32 2
  %11 = load %struct.mtip_port*, %struct.mtip_port** %10, align 8
  store %struct.mtip_port* %11, %struct.mtip_port** %3, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %110, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %15 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %113

18:                                               ; preds = %12
  %19 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %20 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @readl(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %110

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %33 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @writel(i32 %31, i32 %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %104, %30
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 32
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ false, %40 ], [ %45, %43 ]
  br i1 %47, label %48, label %109

48:                                               ; preds = %46
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %103

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 %53, 5
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @MTIP_TAG_INTERNAL, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %104

64:                                               ; preds = %52
  %65 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %66 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %65, i32 0, i32 0
  %67 = load %struct.mtip_cmd*, %struct.mtip_cmd** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %67, i64 %69
  store %struct.mtip_cmd* %70, %struct.mtip_cmd** %8, align 8
  %71 = load %struct.mtip_cmd*, %struct.mtip_cmd** %8, align 8
  %72 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %71, i32 0, i32 1
  %73 = load i32 (%struct.mtip_port*, i32, i32, i32)*, i32 (%struct.mtip_port*, i32, i32, i32)** %72, align 8
  %74 = call i64 @likely(i32 (%struct.mtip_port*, i32, i32, i32)* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %64
  %77 = load %struct.mtip_cmd*, %struct.mtip_cmd** %8, align 8
  %78 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %77, i32 0, i32 1
  %79 = load i32 (%struct.mtip_port*, i32, i32, i32)*, i32 (%struct.mtip_port*, i32, i32, i32)** %78, align 8
  %80 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.mtip_cmd*, %struct.mtip_cmd** %8, align 8
  %83 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 %79(%struct.mtip_port* %80, i32 %81, i32 %84, i32 0)
  br label %102

86:                                               ; preds = %64
  %87 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %88 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @dev_warn(i32* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %94 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = call i64 @mtip_check_surprise_removal(%struct.TYPE_2__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %86
  %99 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %100 = call i32 @mtip_command_cleanup(%struct.driver_data* %99)
  br label %113

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101, %76
  br label %103

103:                                              ; preds = %102, %48
  br label %104

104:                                              ; preds = %103, %63
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = ashr i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %40

109:                                              ; preds = %46
  br label %110

110:                                              ; preds = %109, %29
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %12

113:                                              ; preds = %98, %12
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32 (%struct.mtip_port*, i32, i32, i32)*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i64 @mtip_check_surprise_removal(%struct.TYPE_2__*) #1

declare dso_local i32 @mtip_command_cleanup(%struct.driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
