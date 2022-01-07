; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_b43legacy_dma_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_b43legacy_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, i32, %struct.TYPE_4__*, %struct.b43legacy_dma }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.b43legacy_dma = type { %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, i32 }
%struct.b43legacy_dmaring = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"DMA for this device not supported and no PIO support compiled in\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%u-bit DMA initialized\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_dma_init(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.b43legacy_dma*, align 8
  %5 = alloca %struct.b43legacy_dmaring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %9, i32 0, i32 3
  store %struct.b43legacy_dma* %10, %struct.b43legacy_dma** %4, align 8
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %12 = call i32 @supported_dma_mask(%struct.b43legacy_wldev* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @dma_mask_to_engine_type(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @b43legacy_dma_set_mask(%struct.b43legacy_wldev* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %22 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @b43legacyerr(i32 %23, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %181

27:                                               ; preds = %1
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %29 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = call i32 @ssb_dma_translation(%struct.TYPE_4__* %30)
  %32 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %33 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %36, i32 0, i32 1, i32 %37)
  store %struct.b43legacy_dmaring* %38, %struct.b43legacy_dmaring** %5, align 8
  %39 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %40 = icmp ne %struct.b43legacy_dmaring* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  br label %130

42:                                               ; preds = %27
  %43 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %44 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %45 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %44, i32 0, i32 0
  store %struct.b43legacy_dmaring* %43, %struct.b43legacy_dmaring** %45, align 8
  %46 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %46, i32 1, i32 1, i32 %47)
  store %struct.b43legacy_dmaring* %48, %struct.b43legacy_dmaring** %5, align 8
  %49 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %50 = icmp ne %struct.b43legacy_dmaring* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %174

52:                                               ; preds = %42
  %53 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %54 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %55 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %54, i32 0, i32 1
  store %struct.b43legacy_dmaring* %53, %struct.b43legacy_dmaring** %55, align 8
  %56 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %56, i32 2, i32 1, i32 %57)
  store %struct.b43legacy_dmaring* %58, %struct.b43legacy_dmaring** %5, align 8
  %59 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %60 = icmp ne %struct.b43legacy_dmaring* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %167

62:                                               ; preds = %52
  %63 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %64 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %65 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %64, i32 0, i32 2
  store %struct.b43legacy_dmaring* %63, %struct.b43legacy_dmaring** %65, align 8
  %66 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %66, i32 3, i32 1, i32 %67)
  store %struct.b43legacy_dmaring* %68, %struct.b43legacy_dmaring** %5, align 8
  %69 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %70 = icmp ne %struct.b43legacy_dmaring* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %160

72:                                               ; preds = %62
  %73 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %74 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %75 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %74, i32 0, i32 3
  store %struct.b43legacy_dmaring* %73, %struct.b43legacy_dmaring** %75, align 8
  %76 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %76, i32 4, i32 1, i32 %77)
  store %struct.b43legacy_dmaring* %78, %struct.b43legacy_dmaring** %5, align 8
  %79 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %80 = icmp ne %struct.b43legacy_dmaring* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  br label %153

82:                                               ; preds = %72
  %83 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %84 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %85 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %84, i32 0, i32 4
  store %struct.b43legacy_dmaring* %83, %struct.b43legacy_dmaring** %85, align 8
  %86 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %86, i32 5, i32 1, i32 %87)
  store %struct.b43legacy_dmaring* %88, %struct.b43legacy_dmaring** %5, align 8
  %89 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %90 = icmp ne %struct.b43legacy_dmaring* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  br label %146

92:                                               ; preds = %82
  %93 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %94 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %95 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %94, i32 0, i32 5
  store %struct.b43legacy_dmaring* %93, %struct.b43legacy_dmaring** %95, align 8
  %96 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %96, i32 0, i32 0, i32 %97)
  store %struct.b43legacy_dmaring* %98, %struct.b43legacy_dmaring** %5, align 8
  %99 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %100 = icmp ne %struct.b43legacy_dmaring* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %92
  br label %139

102:                                              ; preds = %92
  %103 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %104 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %105 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %104, i32 0, i32 6
  store %struct.b43legacy_dmaring* %103, %struct.b43legacy_dmaring** %105, align 8
  %106 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %107 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %111, 5
  br i1 %112, label %113, label %124

113:                                              ; preds = %102
  %114 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %114, i32 3, i32 0, i32 %115)
  store %struct.b43legacy_dmaring* %116, %struct.b43legacy_dmaring** %5, align 8
  %117 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %118 = icmp ne %struct.b43legacy_dmaring* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  br label %132

120:                                              ; preds = %113
  %121 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %122 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %123 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %122, i32 0, i32 7
  store %struct.b43legacy_dmaring* %121, %struct.b43legacy_dmaring** %123, align 8
  br label %124

124:                                              ; preds = %120, %102
  %125 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %126 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @b43legacydbg(i32 %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %174, %124, %41
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %2, align 4
  br label %181

132:                                              ; preds = %119
  %133 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %134 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %133, i32 0, i32 6
  %135 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %134, align 8
  %136 = call i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring* %135)
  %137 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %138 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %137, i32 0, i32 6
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %138, align 8
  br label %139

139:                                              ; preds = %132, %101
  %140 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %141 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %140, i32 0, i32 5
  %142 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %141, align 8
  %143 = call i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring* %142)
  %144 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %145 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %144, i32 0, i32 5
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %145, align 8
  br label %146

146:                                              ; preds = %139, %91
  %147 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %148 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %147, i32 0, i32 4
  %149 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %148, align 8
  %150 = call i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring* %149)
  %151 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %152 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %151, i32 0, i32 4
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %152, align 8
  br label %153

153:                                              ; preds = %146, %81
  %154 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %155 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %154, i32 0, i32 3
  %156 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %155, align 8
  %157 = call i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring* %156)
  %158 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %159 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %158, i32 0, i32 3
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %159, align 8
  br label %160

160:                                              ; preds = %153, %71
  %161 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %162 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %161, i32 0, i32 2
  %163 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %162, align 8
  %164 = call i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring* %163)
  %165 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %166 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %165, i32 0, i32 2
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %166, align 8
  br label %167

167:                                              ; preds = %160, %61
  %168 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %169 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %168, i32 0, i32 1
  %170 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %169, align 8
  %171 = call i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring* %170)
  %172 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %173 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %172, i32 0, i32 1
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %173, align 8
  br label %174

174:                                              ; preds = %167, %51
  %175 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %176 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %175, i32 0, i32 0
  %177 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %176, align 8
  %178 = call i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring* %177)
  %179 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %180 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %179, i32 0, i32 0
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %180, align 8
  br label %130

181:                                              ; preds = %130, %20
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @supported_dma_mask(%struct.b43legacy_wldev*) #1

declare dso_local i32 @dma_mask_to_engine_type(i32) #1

declare dso_local i32 @b43legacy_dma_set_mask(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacyerr(i32, i8*) #1

declare dso_local i32 @ssb_dma_translation(%struct.TYPE_4__*) #1

declare dso_local %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacydbg(i32, i8*, i32) #1

declare dso_local i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
