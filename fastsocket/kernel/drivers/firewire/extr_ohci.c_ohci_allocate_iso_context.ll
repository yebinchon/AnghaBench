; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_ohci_allocate_iso_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_ohci_allocate_iso_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_context = type { i32 }
%struct.fw_card = type { i32 }
%struct.fw_ohci = type { i32, i64, i32, i32, i64, %struct.iso_context*, %struct.iso_context* }
%struct.iso_context = type { i32*, %struct.fw_iso_context, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@FW_ISO_CONTEXT_TRANSMIT = common dso_local global i32 0, align 4
@handle_it_packet = common dso_local global i32 0, align 4
@handle_ir_dualbuffer_packet = common dso_local global i32 0, align 4
@handle_ir_packet_per_buffer = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fw_iso_context* (%struct.fw_card*, i32, i32, i64)* @ohci_allocate_iso_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fw_iso_context* @ohci_allocate_iso_context(%struct.fw_card* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.fw_iso_context*, align 8
  %6 = alloca %struct.fw_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.fw_ohci*, align 8
  %11 = alloca %struct.iso_context*, align 8
  %12 = alloca %struct.iso_context*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %21 = load %struct.fw_card*, %struct.fw_card** %6, align 8
  %22 = call %struct.fw_ohci* @fw_ohci(%struct.fw_card* %21)
  store %struct.fw_ohci* %22, %struct.fw_ohci** %10, align 8
  store i64 -1, i64* %15, align 8
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %20, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @FW_ISO_CONTEXT_TRANSMIT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  store i64* %15, i64** %14, align 8
  %29 = load %struct.fw_ohci*, %struct.fw_ohci** %10, align 8
  %30 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %29, i32 0, i32 0
  store i32* %30, i32** %16, align 8
  %31 = load %struct.fw_ohci*, %struct.fw_ohci** %10, align 8
  %32 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %31, i32 0, i32 6
  %33 = load %struct.iso_context*, %struct.iso_context** %32, align 8
  store %struct.iso_context* %33, %struct.iso_context** %12, align 8
  %34 = load i32, i32* @handle_it_packet, align 4
  store i32 %34, i32* %13, align 4
  br label %52

35:                                               ; preds = %4
  %36 = load %struct.fw_ohci*, %struct.fw_ohci** %10, align 8
  %37 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %36, i32 0, i32 1
  store i64* %37, i64** %14, align 8
  %38 = load %struct.fw_ohci*, %struct.fw_ohci** %10, align 8
  %39 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %38, i32 0, i32 2
  store i32* %39, i32** %16, align 8
  %40 = load %struct.fw_ohci*, %struct.fw_ohci** %10, align 8
  %41 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %40, i32 0, i32 5
  %42 = load %struct.iso_context*, %struct.iso_context** %41, align 8
  store %struct.iso_context* %42, %struct.iso_context** %12, align 8
  %43 = load %struct.fw_ohci*, %struct.fw_ohci** %10, align 8
  %44 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @handle_ir_dualbuffer_packet, align 4
  store i32 %48, i32* %13, align 4
  br label %51

49:                                               ; preds = %35
  %50 = load i32, i32* @handle_ir_packet_per_buffer, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.fw_ohci*, %struct.fw_ohci** %10, align 8
  %54 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %53, i32 0, i32 3
  %55 = load i64, i64* %18, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load i64*, i64** %14, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = shl i64 1, %60
  %62 = and i64 %58, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load i32*, i32** %16, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ffs(i32 %66)
  %68 = sub nsw i32 %67, 1
  br label %70

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %64
  %71 = phi i32 [ %68, %64 ], [ -1, %69 ]
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %19, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = shl i64 1, %76
  %78 = xor i64 %77, -1
  %79 = load i64*, i64** %14, align 8
  %80 = load i64, i64* %79, align 8
  %81 = and i64 %80, %78
  store i64 %81, i64* %79, align 8
  %82 = load i32, i32* %19, align 4
  %83 = shl i32 1, %82
  %84 = xor i32 %83, -1
  %85 = load i32*, i32** %16, align 8
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %74, %70
  %89 = load %struct.fw_ohci*, %struct.fw_ohci** %10, align 8
  %90 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %89, i32 0, i32 3
  %91 = load i64, i64* %18, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load i32, i32* %19, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @EBUSY, align 4
  %97 = sub nsw i32 0, %96
  %98 = call %struct.fw_iso_context* @ERR_PTR(i32 %97)
  store %struct.fw_iso_context* %98, %struct.fw_iso_context** %5, align 8
  br label %164

99:                                               ; preds = %88
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @FW_ISO_CONTEXT_TRANSMIT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %19, align 4
  %105 = call i32 @OHCI1394_IsoXmitContextBase(i32 %104)
  store i32 %105, i32* %17, align 4
  br label %109

106:                                              ; preds = %99
  %107 = load i32, i32* %19, align 4
  %108 = call i32 @OHCI1394_IsoRcvContextBase(i32 %107)
  store i32 %108, i32* %17, align 4
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.iso_context*, %struct.iso_context** %12, align 8
  %111 = load i32, i32* %19, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %110, i64 %112
  store %struct.iso_context* %113, %struct.iso_context** %11, align 8
  %114 = load %struct.iso_context*, %struct.iso_context** %11, align 8
  %115 = call i32 @memset(%struct.iso_context* %114, i32 0, i32 24)
  %116 = load %struct.iso_context*, %struct.iso_context** %11, align 8
  %117 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %116, i32 0, i32 3
  store i64 0, i64* %117, align 8
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call i64 @__get_free_page(i32 %118)
  %120 = inttoptr i64 %119 to i8*
  %121 = bitcast i8* %120 to i32*
  %122 = load %struct.iso_context*, %struct.iso_context** %11, align 8
  %123 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %122, i32 0, i32 0
  store i32* %121, i32** %123, align 8
  %124 = load %struct.iso_context*, %struct.iso_context** %11, align 8
  %125 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %109
  br label %148

129:                                              ; preds = %109
  %130 = load %struct.iso_context*, %struct.iso_context** %11, align 8
  %131 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %130, i32 0, i32 2
  %132 = load %struct.fw_ohci*, %struct.fw_ohci** %10, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @context_init(i32* %131, %struct.fw_ohci* %132, i32 %133, i32 %134)
  store i32 %135, i32* %20, align 4
  %136 = load i32, i32* %20, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %142

139:                                              ; preds = %129
  %140 = load %struct.iso_context*, %struct.iso_context** %11, align 8
  %141 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %140, i32 0, i32 1
  store %struct.fw_iso_context* %141, %struct.fw_iso_context** %5, align 8
  br label %164

142:                                              ; preds = %138
  %143 = load %struct.iso_context*, %struct.iso_context** %11, align 8
  %144 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = ptrtoint i32* %145 to i64
  %147 = call i32 @free_page(i64 %146)
  br label %148

148:                                              ; preds = %142, %128
  %149 = load %struct.fw_ohci*, %struct.fw_ohci** %10, align 8
  %150 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %149, i32 0, i32 3
  %151 = load i64, i64* %18, align 8
  %152 = call i32 @spin_lock_irqsave(i32* %150, i64 %151)
  %153 = load i32, i32* %19, align 4
  %154 = shl i32 1, %153
  %155 = load i32*, i32** %16, align 8
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %154
  store i32 %157, i32* %155, align 4
  %158 = load %struct.fw_ohci*, %struct.fw_ohci** %10, align 8
  %159 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %158, i32 0, i32 3
  %160 = load i64, i64* %18, align 8
  %161 = call i32 @spin_unlock_irqrestore(i32* %159, i64 %160)
  %162 = load i32, i32* %20, align 4
  %163 = call %struct.fw_iso_context* @ERR_PTR(i32 %162)
  store %struct.fw_iso_context* %163, %struct.fw_iso_context** %5, align 8
  br label %164

164:                                              ; preds = %148, %139, %95
  %165 = load %struct.fw_iso_context*, %struct.fw_iso_context** %5, align 8
  ret %struct.fw_iso_context* %165
}

declare dso_local %struct.fw_ohci* @fw_ohci(%struct.fw_card*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.fw_iso_context* @ERR_PTR(i32) #1

declare dso_local i32 @OHCI1394_IsoXmitContextBase(i32) #1

declare dso_local i32 @OHCI1394_IsoRcvContextBase(i32) #1

declare dso_local i32 @memset(%struct.iso_context*, i32, i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @context_init(i32*, %struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
