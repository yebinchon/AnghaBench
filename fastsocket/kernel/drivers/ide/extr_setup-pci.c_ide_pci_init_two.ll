; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_setup-pci.c_ide_pci_init_two.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_setup-pci.c_ide_pci_init_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ide_port_info = type { i32 }
%struct.ide_host = type { i32, i8*, i32** }
%struct.ide_hw = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_pci_init_two(%struct.pci_dev* %0, %struct.pci_dev* %1, %struct.ide_port_info* %2, i8* %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.ide_port_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [2 x %struct.pci_dev*], align 16
  %10 = alloca %struct.ide_host*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x %struct.ide_hw], align 16
  %15 = alloca [4 x %struct.ide_hw*], align 16
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.ide_port_info* %2, %struct.ide_port_info** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %16, align 8
  %18 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %16, i64 1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %18, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %21 = icmp ne %struct.pci_dev* %20, null
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 4, i32 2
  store i32 %23, i32* %13, align 4
  %24 = bitcast [4 x %struct.ide_hw*]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 32, i1 false)
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %59, %4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = sdiv i32 %27, 2
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 %32
  %34 = load %struct.pci_dev*, %struct.pci_dev** %33, align 8
  %35 = load %struct.ide_port_info*, %struct.ide_port_info** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @ide_setup_pci_controller(%struct.pci_dev* %34, %struct.ide_port_info* %35, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %185

44:                                               ; preds = %30
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 %46
  %48 = load %struct.pci_dev*, %struct.pci_dev** %47, align 8
  %49 = load %struct.ide_port_info*, %struct.ide_port_info** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = mul nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x %struct.ide_hw], [4 x %struct.ide_hw]* %14, i64 0, i64 %52
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x %struct.ide_hw*], [4 x %struct.ide_hw*]* %15, i64 0, i64 %56
  %58 = call i32 @ide_pci_setup_ports(%struct.pci_dev* %48, %struct.ide_port_info* %49, %struct.ide_hw* %53, %struct.ide_hw** %57)
  br label %59

59:                                               ; preds = %44
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %25

62:                                               ; preds = %25
  %63 = load %struct.ide_port_info*, %struct.ide_port_info** %7, align 8
  %64 = getelementptr inbounds [4 x %struct.ide_hw*], [4 x %struct.ide_hw*]* %15, i64 0, i64 0
  %65 = load i32, i32* %13, align 4
  %66 = call %struct.ide_host* @ide_host_alloc(%struct.ide_port_info* %63, %struct.ide_hw** %64, i32 %65)
  store %struct.ide_host* %66, %struct.ide_host** %10, align 8
  %67 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %68 = icmp eq %struct.ide_host* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %11, align 4
  br label %185

72:                                               ; preds = %62
  %73 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  %75 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %76 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %75, i32 0, i32 2
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  store i32* %74, i32** %78, align 8
  %79 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %80 = icmp ne %struct.pci_dev* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 0
  %84 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %85 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %84, i32 0, i32 2
  %86 = load i32**, i32*** %85, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 1
  store i32* %83, i32** %87, align 8
  br label %88

88:                                               ; preds = %81, %72
  %89 = load i8*, i8** %8, align 8
  %90 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %91 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* @IRQF_SHARED, align 4
  %93 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %94 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 0
  %96 = load %struct.pci_dev*, %struct.pci_dev** %95, align 16
  %97 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %98 = call i32 @pci_set_drvdata(%struct.pci_dev* %96, %struct.ide_host* %97)
  %99 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %100 = icmp ne %struct.pci_dev* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %88
  %102 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 1
  %103 = load %struct.pci_dev*, %struct.pci_dev** %102, align 8
  %104 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %105 = call i32 @pci_set_drvdata(%struct.pci_dev* %103, %struct.ide_host* %104)
  br label %106

106:                                              ; preds = %101, %88
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %171, %106
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %13, align 4
  %110 = sdiv i32 %109, 2
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %174

112:                                              ; preds = %107
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 %114
  %116 = load %struct.pci_dev*, %struct.pci_dev** %115, align 8
  %117 = load %struct.ide_port_info*, %struct.ide_port_info** %7, align 8
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 @do_ide_setup_pci_device(%struct.pci_dev* %116, %struct.ide_port_info* %117, i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %112
  br label %185

126:                                              ; preds = %112
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 %128
  %130 = load %struct.pci_dev*, %struct.pci_dev** %129, align 8
  %131 = call i64 @ide_pci_is_in_compatibility_mode(%struct.pci_dev* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %157

133:                                              ; preds = %126
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 %135
  %137 = load %struct.pci_dev*, %struct.pci_dev** %136, align 8
  %138 = call i8* @pci_get_legacy_ide_irq(%struct.pci_dev* %137, i32 0)
  %139 = ptrtoint i8* %138 to i32
  %140 = load i32, i32* %12, align 4
  %141 = mul nsw i32 %140, 2
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [4 x %struct.ide_hw], [4 x %struct.ide_hw]* %14, i64 0, i64 %142
  %144 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %143, i32 0, i32 0
  store i32 %139, i32* %144, align 4
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [2 x %struct.pci_dev*], [2 x %struct.pci_dev*]* %9, i64 0, i64 %146
  %148 = load %struct.pci_dev*, %struct.pci_dev** %147, align 8
  %149 = call i8* @pci_get_legacy_ide_irq(%struct.pci_dev* %148, i32 1)
  %150 = ptrtoint i8* %149 to i32
  %151 = load i32, i32* %12, align 4
  %152 = mul nsw i32 %151, 2
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [4 x %struct.ide_hw], [4 x %struct.ide_hw]* %14, i64 0, i64 %154
  %156 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %155, i32 0, i32 0
  store i32 %150, i32* %156, align 4
  br label %170

157:                                              ; preds = %126
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %12, align 4
  %160 = mul nsw i32 %159, 2
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x %struct.ide_hw], [4 x %struct.ide_hw]* %14, i64 0, i64 %161
  %163 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %162, i32 0, i32 0
  store i32 %158, i32* %163, align 4
  %164 = load i32, i32* %12, align 4
  %165 = mul nsw i32 %164, 2
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4 x %struct.ide_hw], [4 x %struct.ide_hw]* %14, i64 0, i64 %167
  %169 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %168, i32 0, i32 0
  store i32 %158, i32* %169, align 4
  br label %170

170:                                              ; preds = %157, %133
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %107

174:                                              ; preds = %107
  %175 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %176 = load %struct.ide_port_info*, %struct.ide_port_info** %7, align 8
  %177 = getelementptr inbounds [4 x %struct.ide_hw*], [4 x %struct.ide_hw*]* %15, i64 0, i64 0
  %178 = call i32 @ide_host_register(%struct.ide_host* %175, %struct.ide_port_info* %176, %struct.ide_hw** %177)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load %struct.ide_host*, %struct.ide_host** %10, align 8
  %183 = call i32 @ide_host_free(%struct.ide_host* %182)
  br label %184

184:                                              ; preds = %181, %174
  br label %185

185:                                              ; preds = %184, %125, %69, %43
  %186 = load i32, i32* %11, align 4
  ret i32 %186
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ide_setup_pci_controller(%struct.pci_dev*, %struct.ide_port_info*, i32) #2

declare dso_local i32 @ide_pci_setup_ports(%struct.pci_dev*, %struct.ide_port_info*, %struct.ide_hw*, %struct.ide_hw**) #2

declare dso_local %struct.ide_host* @ide_host_alloc(%struct.ide_port_info*, %struct.ide_hw**, i32) #2

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ide_host*) #2

declare dso_local i32 @do_ide_setup_pci_device(%struct.pci_dev*, %struct.ide_port_info*, i32) #2

declare dso_local i64 @ide_pci_is_in_compatibility_mode(%struct.pci_dev*) #2

declare dso_local i8* @pci_get_legacy_ide_irq(%struct.pci_dev*, i32) #2

declare dso_local i32 @ide_host_register(%struct.ide_host*, %struct.ide_port_info*, %struct.ide_hw**) #2

declare dso_local i32 @ide_host_free(%struct.ide_host*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
