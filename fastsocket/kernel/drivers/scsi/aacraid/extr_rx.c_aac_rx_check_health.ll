; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_rx.c_aac_rx_check_health.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_rx.c_aac_rx_check_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }
%struct.aac_dev = type { i32 }
%struct.POSTSTATUS = type { i8*, i8* }

@MUnit = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SELF_TEST_FAILED = common dso_local global i32 0, align 4
@KERNEL_PANIC = common dso_local global i32 0, align 4
@COMMAND_POST_RESULTS = common dso_local global i32 0, align 4
@KERNEL_UP_AND_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*)* @aac_rx_check_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_rx_check_health(%struct.aac_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.POSTSTATUS*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  %10 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 1), align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rx_readl(%struct.aac_dev* %10, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SELF_TEST_FAILED, align 4
  %17 = and i32 %15, %16
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %185

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @KERNEL_PANIC, align 4
  %24 = and i32 %22, %23
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %174

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, 4278190080
  %31 = icmp eq i64 %30, 3154116608
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 255
  store i32 %38, i32* %2, align 4
  br label %185

39:                                               ; preds = %27
  %40 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %41 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @pci_alloc_consistent(i32 %42, i32 512, i32* %8)
  store i8* %43, i8** %5, align 8
  store i32 -2, i32* %9, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = icmp eq i8* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %2, align 4
  br label %185

51:                                               ; preds = %39
  %52 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %53 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @pci_alloc_consistent(i32 %54, i32 16, i32* %7)
  %56 = bitcast i8* %55 to %struct.POSTSTATUS*
  store %struct.POSTSTATUS* %56, %struct.POSTSTATUS** %6, align 8
  %57 = load %struct.POSTSTATUS*, %struct.POSTSTATUS** %6, align 8
  %58 = icmp eq %struct.POSTSTATUS* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %51
  %63 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %64 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i32, i32, ...) @pci_free_consistent(i32 %65, i32 512, i8* %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %2, align 4
  br label %185

70:                                               ; preds = %51
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @memset(i8* %71, i32 0, i32 512)
  %73 = load i32, i32* @COMMAND_POST_RESULTS, align 4
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = load %struct.POSTSTATUS*, %struct.POSTSTATUS** %6, align 8
  %76 = getelementptr inbounds %struct.POSTSTATUS, %struct.POSTSTATUS* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.POSTSTATUS*, %struct.POSTSTATUS** %6, align 8
  %80 = getelementptr inbounds %struct.POSTSTATUS, %struct.POSTSTATUS* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @MUnit, i32 0, i32 0), align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @rx_writel(%struct.aac_dev* %81, i32 %84, i32 %85)
  %87 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %88 = load i32, i32* @COMMAND_POST_RESULTS, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @rx_sync_cmd(%struct.aac_dev* %87, i32 %88, i32 %89, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null, i32* null, i32* null, i32* null)
  %91 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %92 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.POSTSTATUS*, %struct.POSTSTATUS** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i32, i32, ...) @pci_free_consistent(i32 %93, i32 16, %struct.POSTSTATUS* %94, i32 %95)
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 48
  br i1 %101, label %102, label %116

102:                                              ; preds = %70
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 120
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 88
  br label %114

114:                                              ; preds = %108, %102
  %115 = phi i1 [ true, %102 ], [ %113, %108 ]
  br label %116

116:                                              ; preds = %114, %70
  %117 = phi i1 [ false, %70 ], [ %115, %114 ]
  %118 = zext i1 %117 to i32
  %119 = call i64 @likely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %166

121:                                              ; preds = %116
  %122 = load i8*, i8** %5, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp sle i32 %125, 57
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = sub nsw i32 %131, 48
  br label %140

133:                                              ; preds = %121
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 2
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = sub nsw i32 %137, 65
  %139 = add nsw i32 %138, 10
  br label %140

140:                                              ; preds = %133, %127
  %141 = phi i32 [ %132, %127 ], [ %139, %133 ]
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = shl i32 %142, 4
  store i32 %143, i32* %9, align 4
  %144 = load i8*, i8** %5, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 3
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp sle i32 %147, 57
  br i1 %148, label %149, label %155

149:                                              ; preds = %140
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 3
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = sub nsw i32 %153, 48
  br label %162

155:                                              ; preds = %140
  %156 = load i8*, i8** %5, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 3
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = sub nsw i32 %159, 65
  %161 = add nsw i32 %160, 10
  br label %162

162:                                              ; preds = %155, %149
  %163 = phi i32 [ %154, %149 ], [ %161, %155 ]
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %162, %116
  %167 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %168 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i8*, i8** %5, align 8
  %171 = load i32, i32* %8, align 4
  %172 = call i32 (i32, i32, ...) @pci_free_consistent(i32 %169, i32 512, i8* %170, i32 %171)
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %2, align 4
  br label %185

174:                                              ; preds = %21
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @KERNEL_UP_AND_RUNNING, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = call i64 @unlikely(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  store i32 -3, i32* %2, align 4
  br label %185

184:                                              ; preds = %174
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %184, %183, %166, %62, %49, %35, %20
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @rx_readl(%struct.aac_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @rx_writel(%struct.aac_dev*, i32, i32) #1

declare dso_local i32 @rx_sync_cmd(%struct.aac_dev*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
