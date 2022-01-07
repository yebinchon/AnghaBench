; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_rio_hw_add_outb_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_fsl_rio.c_rio_hw_add_outb_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { i32, %struct.rio_priv* }
%struct.rio_priv = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32*, i64, i64*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.rio_dev = type { i32 }
%struct.rio_tx_desc = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [77 x i8] c"RIO: rio_hw_add_outb_message(): destid %4.4x mbox %d buffer %8.8x len %8.8x\0A\00", align 1
@RIO_MAX_MSG_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RIO_MSG_OMR_MUI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rio_hw_add_outb_message(%struct.rio_mport* %0, %struct.rio_dev* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.rio_mport*, align 8
  %7 = alloca %struct.rio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rio_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rio_tx_desc*, align 8
  %14 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %6, align 8
  store %struct.rio_dev* %1, %struct.rio_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %16 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %15, i32 0, i32 1
  %17 = load %struct.rio_priv*, %struct.rio_priv** %16, align 8
  store %struct.rio_priv* %17, %struct.rio_priv** %11, align 8
  %18 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %19 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.rio_tx_desc*
  %23 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %24 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.rio_tx_desc, %struct.rio_tx_desc* %22, i64 %27
  store %struct.rio_tx_desc* %28, %struct.rio_tx_desc** %13, align 8
  store i32 0, i32* %14, align 4
  %29 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %30 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = ptrtoint i8* %33 to i32
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32, i32 %34, i64 %35)
  %37 = load i64, i64* %10, align 8
  %38 = icmp ult i64 %37, 8
  br i1 %38, label %43, label %39

39:                                               ; preds = %5
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @RIO_MAX_MSG_SIZE, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %5
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  br label %169

46:                                               ; preds = %39
  %47 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %48 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %52 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %50, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @memcpy(i64 %57, i8* %58, i64 %59)
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @RIO_MAX_MSG_SIZE, align 8
  %63 = sub i64 %62, 4
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %46
  %66 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %67 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i64*, i64** %68, align 8
  %70 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %71 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %69, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %76, %77
  %79 = load i64, i64* @RIO_MAX_MSG_SIZE, align 8
  %80 = load i64, i64* %10, align 8
  %81 = sub i64 %79, %80
  %82 = call i32 @memset(i64 %78, i32 0, i64 %81)
  br label %83

83:                                               ; preds = %65, %46
  %84 = load %struct.rio_mport*, %struct.rio_mport** %6, align 8
  %85 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %111 [
    i32 129, label %87
    i32 128, label %99
  ]

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, 3
  %90 = load %struct.rio_tx_desc*, %struct.rio_tx_desc** %13, align 8
  %91 = getelementptr inbounds %struct.rio_tx_desc, %struct.rio_tx_desc* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %93 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 2
  %96 = or i32 671088640, %95
  %97 = load %struct.rio_tx_desc*, %struct.rio_tx_desc** %13, align 8
  %98 = getelementptr inbounds %struct.rio_tx_desc, %struct.rio_tx_desc* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %111

99:                                               ; preds = %83
  %100 = load %struct.rio_dev*, %struct.rio_dev** %7, align 8
  %101 = getelementptr inbounds %struct.rio_dev, %struct.rio_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 16
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, 3
  %106 = or i32 %103, %105
  %107 = load %struct.rio_tx_desc*, %struct.rio_tx_desc** %13, align 8
  %108 = getelementptr inbounds %struct.rio_tx_desc, %struct.rio_tx_desc* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.rio_tx_desc*, %struct.rio_tx_desc** %13, align 8
  %110 = getelementptr inbounds %struct.rio_tx_desc, %struct.rio_tx_desc* %109, i32 0, i32 1
  store i32 671088640, i32* %110, align 4
  br label %111

111:                                              ; preds = %83, %99, %87
  %112 = load i64, i64* %10, align 8
  %113 = call i64 @is_power_of_2(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i64, i64* %10, align 8
  br label %122

117:                                              ; preds = %111
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @get_bitmask_order(i64 %118)
  %120 = shl i32 1, %119
  %121 = sext i32 %120 to i64
  br label %122

122:                                              ; preds = %117, %115
  %123 = phi i64 [ %116, %115 ], [ %121, %117 ]
  %124 = load %struct.rio_tx_desc*, %struct.rio_tx_desc** %13, align 8
  %125 = getelementptr inbounds %struct.rio_tx_desc, %struct.rio_tx_desc* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %127 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %131 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %129, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = or i32 4, %136
  %138 = load %struct.rio_tx_desc*, %struct.rio_tx_desc** %13, align 8
  %139 = getelementptr inbounds %struct.rio_tx_desc, %struct.rio_tx_desc* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 8
  %140 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %141 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %140, i32 0, i32 1
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = call i32 @in_be32(i32* %143)
  store i32 %144, i32* %12, align 4
  %145 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %146 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %145, i32 0, i32 1
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @RIO_MSG_OMR_MUI, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @out_be32(i32* %148, i32 %151)
  %153 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %154 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  %158 = sext i32 %157 to i64
  %159 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %160 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %158, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %122
  %165 = load %struct.rio_priv*, %struct.rio_priv** %11, align 8
  %166 = getelementptr inbounds %struct.rio_priv, %struct.rio_priv* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  br label %168

168:                                              ; preds = %164, %122
  br label %169

169:                                              ; preds = %168, %43
  %170 = load i32, i32* %14, align 4
  ret i32 %170
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i64 @is_power_of_2(i64) #1

declare dso_local i32 @get_bitmask_order(i64) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
