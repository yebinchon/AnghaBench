; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_get_mac_addr_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_get_mac_addr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@MAC_ADDR_IDX = common dso_local global i32 0, align 4
@MAC_ADDR_MW = common dso_local global i32 0, align 4
@MAC_ADDR_IDX_SHIFT = common dso_local global i32 0, align 4
@MAC_ADDR_ADR = common dso_local global i32 0, align 4
@MAC_ADDR_RS = common dso_local global i32 0, align 4
@MAC_ADDR_MR = common dso_local global i32 0, align 4
@MAC_ADDR_DATA = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Address type %d not yet supported.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql_get_mac_addr_reg(%struct.ql_adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ql_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %129 [
    i32 129, label %12
    i32 131, label %12
    i32 128, label %128
    i32 130, label %128
  ]

12:                                               ; preds = %4, %4
  %13 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %14 = load i32, i32* @MAC_ADDR_IDX, align 4
  %15 = load i32, i32* @MAC_ADDR_MW, align 4
  %16 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %13, i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %140

20:                                               ; preds = %12
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %22 = load i32, i32* @MAC_ADDR_IDX, align 4
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @MAC_ADDR_IDX_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %23, %27
  %29 = load i32, i32* @MAC_ADDR_ADR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MAC_ADDR_RS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @ql_write32(%struct.ql_adapter* %21, i32 %22, i32 %34)
  %36 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %37 = load i32, i32* @MAC_ADDR_IDX, align 4
  %38 = load i32, i32* @MAC_ADDR_MR, align 4
  %39 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %36, i32 %37, i32 %38, i32 0)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  br label %140

43:                                               ; preds = %20
  %44 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %45 = load i32, i32* @MAC_ADDR_DATA, align 4
  %46 = call i8* @ql_read32(%struct.ql_adapter* %44, i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %50 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %51 = load i32, i32* @MAC_ADDR_IDX, align 4
  %52 = load i32, i32* @MAC_ADDR_MW, align 4
  %53 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %50, i32 %51, i32 %52, i32 0)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %140

57:                                               ; preds = %43
  %58 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %59 = load i32, i32* @MAC_ADDR_IDX, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @MAC_ADDR_IDX_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = or i32 %60, %64
  %66 = load i32, i32* @MAC_ADDR_ADR, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @MAC_ADDR_RS, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @ql_write32(%struct.ql_adapter* %58, i32 %59, i32 %71)
  %73 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %74 = load i32, i32* @MAC_ADDR_IDX, align 4
  %75 = load i32, i32* @MAC_ADDR_MR, align 4
  %76 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %73, i32 %74, i32 %75, i32 0)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %57
  br label %140

80:                                               ; preds = %57
  %81 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %82 = load i32, i32* @MAC_ADDR_DATA, align 4
  %83 = call i8* @ql_read32(%struct.ql_adapter* %81, i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 131
  br i1 %88, label %89, label %127

89:                                               ; preds = %80
  %90 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %91 = load i32, i32* @MAC_ADDR_IDX, align 4
  %92 = load i32, i32* @MAC_ADDR_MW, align 4
  %93 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %90, i32 %91, i32 %92, i32 0)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %140

97:                                               ; preds = %89
  %98 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %99 = load i32, i32* @MAC_ADDR_IDX, align 4
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @MAC_ADDR_IDX_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = or i32 %100, %104
  %106 = load i32, i32* @MAC_ADDR_ADR, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @MAC_ADDR_RS, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @ql_write32(%struct.ql_adapter* %98, i32 %99, i32 %111)
  %113 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %114 = load i32, i32* @MAC_ADDR_IDX, align 4
  %115 = load i32, i32* @MAC_ADDR_MR, align 4
  %116 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %113, i32 %114, i32 %115, i32 0)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %97
  br label %140

120:                                              ; preds = %97
  %121 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %122 = load i32, i32* @MAC_ADDR_DATA, align 4
  %123 = call i8* @ql_read32(%struct.ql_adapter* %121, i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %8, align 8
  store i32 %124, i32* %125, align 4
  br label %127

127:                                              ; preds = %120, %80
  br label %139

128:                                              ; preds = %4, %4
  br label %129

129:                                              ; preds = %4, %128
  %130 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %131 = load i32, i32* @ifup, align 4
  %132 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %133 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @netif_crit(%struct.ql_adapter* %130, i32 %131, i32 %134, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @EPERM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %129, %127
  br label %140

140:                                              ; preds = %139, %119, %96, %79, %56, %42, %19
  %141 = load i32, i32* %10, align 4
  ret i32 %141
}

declare dso_local i32 @ql_wait_reg_rdy(%struct.ql_adapter*, i32, i32, i32) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i8* @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @netif_crit(%struct.ql_adapter*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
