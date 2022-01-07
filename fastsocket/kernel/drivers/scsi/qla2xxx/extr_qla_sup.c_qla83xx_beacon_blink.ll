; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla83xx_beacon_blink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla83xx_beacon_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla83xx_beacon_blink(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca [6 x i32], align 16
  %6 = alloca [6 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 0
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %11, align 8
  store %struct.qla_hw_data* %12, %struct.qla_hw_data** %4, align 8
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %14 = call i32 @IS_QLA83XX(%struct.qla_hw_data* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %18 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %138

21:                                               ; preds = %16, %1
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %138

27:                                               ; preds = %21
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %29 = call i64 @IS_QLA2031(%struct.qla_hw_data* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %33 = call i32 @qla83xx_select_led_port(%struct.qla_hw_data* %32)
  store i32 %33, i32* %3, align 4
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @qla83xx_wr_reg(%struct.scsi_qla_host* %34, i32 %35, i32 1073750016)
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 4
  %40 = call i32 @qla83xx_wr_reg(%struct.scsi_qla_host* %37, i32 %39, i32 1073750016)
  %41 = call i32 @msleep(i32 1000)
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @qla83xx_wr_reg(%struct.scsi_qla_host* %42, i32 %43, i32 1073758208)
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 4
  %48 = call i32 @qla83xx_wr_reg(%struct.scsi_qla_host* %45, i32 %47, i32 1073758208)
  br label %138

49:                                               ; preds = %27
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %51 = call i64 @IS_QLA8031(%struct.qla_hw_data* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %49
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %55 = call i32 @qla83xx_select_led_port(%struct.qla_hw_data* %54)
  store i32 %55, i32* %3, align 4
  %56 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @qla83xx_rd_reg(%struct.scsi_qla_host* %56, i32 %57, i32* %7)
  %59 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 16
  %62 = call i32 @qla83xx_rd_reg(%struct.scsi_qla_host* %59, i32 %61, i32* %8)
  %63 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @qla83xx_wr_reg(%struct.scsi_qla_host* %63, i32 %64, i32 32784384)
  %66 = call i32 @msleep(i32 500)
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @qla83xx_wr_reg(%struct.scsi_qla_host* %67, i32 %68, i32 1073742324)
  %70 = call i32 @msleep(i32 1000)
  %71 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @qla83xx_wr_reg(%struct.scsi_qla_host* %71, i32 %72, i32 %73)
  %75 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 16
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @qla83xx_wr_reg(%struct.scsi_qla_host* %75, i32 %77, i32 %78)
  br label %137

80:                                               ; preds = %49
  %81 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %82 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %136

84:                                               ; preds = %80
  %85 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %87 = call i32 @qla81xx_get_led_config(%struct.scsi_qla_host* %85, i32* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @QLA_SUCCESS, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %132

91:                                               ; preds = %84
  %92 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %93 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 16384, i32* %96, align 16
  %97 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 8192, i32* %97, align 4
  %98 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 0, i32* %98, align 8
  %99 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 0, i32* %99, align 4
  %100 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  store i32 0, i32* %100, align 16
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  store i32 0, i32* %101, align 4
  br label %109

102:                                              ; preds = %91
  %103 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 16384, i32* %103, align 16
  %104 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 16384, i32* %104, align 4
  %105 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 16384, i32* %105, align 8
  %106 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 8192, i32* %106, align 4
  %107 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  store i32 0, i32* %107, align 16
  %108 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  store i32 8192, i32* %108, align 4
  br label %109

109:                                              ; preds = %102, %95
  %110 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %111 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %112 = call i32 @qla81xx_set_led_config(%struct.scsi_qla_host* %110, i32* %111)
  store i32 %112, i32* %9, align 4
  %113 = call i32 @msleep(i32 1000)
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %115 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 16384, i32* %118, align 16
  %119 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 8192, i32* %119, align 4
  %120 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 0, i32* %120, align 8
  br label %128

121:                                              ; preds = %109
  %122 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 16384, i32* %122, align 16
  %123 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 8192, i32* %123, align 4
  %124 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 16384, i32* %124, align 8
  %125 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 16384, i32* %125, align 4
  %126 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  store i32 0, i32* %126, align 16
  %127 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  store i32 8192, i32* %127, align 4
  br label %128

128:                                              ; preds = %121, %117
  %129 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %130 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %131 = call i32 @qla81xx_set_led_config(%struct.scsi_qla_host* %129, i32* %130)
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %128, %84
  %133 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %134 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %135 = call i32 @qla81xx_set_led_config(%struct.scsi_qla_host* %133, i32* %134)
  br label %136

136:                                              ; preds = %132, %80
  br label %137

137:                                              ; preds = %136, %53
  br label %138

138:                                              ; preds = %20, %26, %137, %31
  ret void
}

declare dso_local i32 @IS_QLA83XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2031(%struct.qla_hw_data*) #1

declare dso_local i32 @qla83xx_select_led_port(%struct.qla_hw_data*) #1

declare dso_local i32 @qla83xx_wr_reg(%struct.scsi_qla_host*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @IS_QLA8031(%struct.qla_hw_data*) #1

declare dso_local i32 @qla83xx_rd_reg(%struct.scsi_qla_host*, i32, i32*) #1

declare dso_local i32 @qla81xx_get_led_config(%struct.scsi_qla_host*, i32*) #1

declare dso_local i32 @qla81xx_set_led_config(%struct.scsi_qla_host*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
