; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_detect_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_detect_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@SLIPORT_STATUS_OFFSET = common dso_local global i64 0, align 8
@SLIPORT_STATUS_ERR_MASK = common dso_local global i32 0, align 4
@SLIPORT_ERROR1_OFFSET = common dso_local global i64 0, align 8
@SLIPORT_ERROR2_OFFSET = common dso_local global i64 0, align 8
@PCICFG_UE_STATUS_LOW = common dso_local global i32 0, align 4
@PCICFG_UE_STATUS_HIGH = common dso_local global i32 0, align 4
@PCICFG_UE_STATUS_LOW_MASK = common dso_local global i32 0, align 4
@PCICFG_UE_STATUS_HI_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error detected in the card\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ERR: sliport status 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ERR: sliport error1 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ERR: sliport error2 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"UE: %s bit set\0A\00", align 1
@ue_status_low_desc = common dso_local global i32* null, align 8
@ue_status_hi_desc = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @be_detect_error(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %12 = call i64 @be_hw_error(%struct.be_adapter* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %168

15:                                               ; preds = %1
  %16 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %17 = call i64 @lancer_chip(%struct.be_adapter* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SLIPORT_STATUS_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @ioread32(i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SLIPORT_STATUS_ERR_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %19
  %31 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SLIPORT_ERROR1_OFFSET, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @ioread32(i64 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SLIPORT_ERROR2_OFFSET, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @ioread32(i64 %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %30, %19
  br label %73

44:                                               ; preds = %15
  %45 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* @PCICFG_UE_STATUS_LOW, align 4
  %49 = call i32 @pci_read_config_dword(%struct.TYPE_2__* %47, i32 %48, i32* %3)
  %50 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* @PCICFG_UE_STATUS_HIGH, align 4
  %54 = call i32 @pci_read_config_dword(%struct.TYPE_2__* %52, i32 %53, i32* %4)
  %55 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* @PCICFG_UE_STATUS_LOW_MASK, align 4
  %59 = call i32 @pci_read_config_dword(%struct.TYPE_2__* %57, i32 %58, i32* %5)
  %60 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* @PCICFG_UE_STATUS_HI_MASK, align 4
  %64 = call i32 @pci_read_config_dword(%struct.TYPE_2__* %62, i32 %63, i32* %6)
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %5, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %6, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %44, %43
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @SLIPORT_STATUS_ERR_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %78, %73
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @SLIPORT_STATUS_ERR_MASK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %86
  %92 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %93 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i32*, i8*, ...) @dev_err(i32* %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %99 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (i32*, i8*, ...) @dev_err(i32* %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %105 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %9, align 4
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %91, %86
  %111 = load i32, i32* %3, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %139

113:                                              ; preds = %110
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %133, %113
  %115 = load i32, i32* %3, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %114
  %118 = load i32, i32* %3, align 4
  %119 = and i32 %118, 1
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %123 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32*, i32** @ue_status_low_desc, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32*, i8*, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %121, %117
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %3, align 4
  %135 = ashr i32 %134, 1
  store i32 %135, i32* %3, align 4
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %114

138:                                              ; preds = %114
  br label %139

139:                                              ; preds = %138, %110
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %168

142:                                              ; preds = %139
  store i32 0, i32* %10, align 4
  br label %143

143:                                              ; preds = %162, %142
  %144 = load i32, i32* %4, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %167

146:                                              ; preds = %143
  %147 = load i32, i32* %4, align 4
  %148 = and i32 %147, 1
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %146
  %151 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %152 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32*, i32** @ue_status_hi_desc, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32*, i8*, ...) @dev_err(i32* %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %150, %146
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %4, align 4
  %164 = ashr i32 %163, 1
  store i32 %164, i32* %4, align 4
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %143

167:                                              ; preds = %143
  br label %168

168:                                              ; preds = %14, %167, %139
  ret void
}

declare dso_local i64 @be_hw_error(%struct.be_adapter*) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_2__*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
