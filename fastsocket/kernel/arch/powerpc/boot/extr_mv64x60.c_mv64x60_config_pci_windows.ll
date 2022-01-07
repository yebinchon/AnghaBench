; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mv64x60.c_mv64x60_config_pci_windows.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_mv64x60.c_mv64x60_config_pci_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MV64x60_PCI1_BAR_ENABLE = common dso_local global i32 0, align 4
@MV64x60_PCI0_BAR_ENABLE = common dso_local global i32 0, align 4
@MV64x60_PCI_ACC_CNTL_WINDOWS = common dso_local global i32 0, align 4
@mv64x60_pci_acc = common dso_local global %struct.TYPE_4__** null, align 8
@MV64x60_PCI1_PCI_DECODE_CNTL = common dso_local global i32 0, align 4
@MV64x60_PCI0_PCI_DECODE_CNTL = common dso_local global i32 0, align 4
@mv64x60_pci2mem = common dso_local global %struct.TYPE_6__* null, align 8
@MV64x60_PCI_ACC_CNTL_ENABLE = common dso_local global i32 0, align 4
@mv64x60_pci2reg = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mv64x60_config_pci_windows(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 -513, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @MV64x60_PCI1_BAR_ENABLE, align 4
  br label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @MV64x60_PCI0_BAR_ENABLE, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %15, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %16, align 4
  %30 = call i32 @out_le32(i32* %28, i32 %29)
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %50, %23
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @MV64x60_PCI_ACC_CNTL_WINDOWS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @mv64x60_pci_acc, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %36, i64 %47
  %49 = call i32 @out_le32(i32* %48, i32 0)
  br label %50

50:                                               ; preds = %35
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %31

53:                                               ; preds = %31
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %204

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @MV64x60_PCI1_PCI_DECODE_CNTL, align 4
  br label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @MV64x60_PCI0_PCI_DECODE_CNTL, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %14, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @in_le32(i32* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %13, align 4
  %76 = and i32 %75, -2
  %77 = call i32 @out_le32(i32* %74, i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %78, 1
  %80 = and i32 %79, -4096
  store i32 %80, i32* %11, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mv64x60_pci2mem, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @PCI_DEVFN(i32 0, i32 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mv64x60_pci2mem, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @mv64x60_cfg_write(i32* %81, i32 %82, i32 %83, i32 %90, i32 %96, i32 0)
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mv64x60_pci2mem, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @PCI_DEVFN(i32 0, i32 %106)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mv64x60_pci2mem, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @mv64x60_cfg_write(i32* %98, i32 %99, i32 %100, i32 %107, i32 %113, i32 0)
  %115 = load i32*, i32** %7, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mv64x60_pci2mem, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %115, i64 %122
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @out_le32(i32* %123, i32 %124)
  %126 = load i32, i32* @MV64x60_PCI_ACC_CNTL_ENABLE, align 4
  %127 = load i32, i32* %12, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %12, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @mv64x60_pci_acc, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %130, i64 %132
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %129, i64 %138
  %140 = call i32 @out_le32(i32* %139, i32 0)
  %141 = load i32*, i32** %7, align 8
  %142 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @mv64x60_pci_acc, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %142, i64 %144
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %141, i64 %150
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @out_le32(i32* %151, i32 %152)
  %154 = load i32*, i32** %7, align 8
  %155 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @mv64x60_pci_acc, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %155, i64 %157
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %154, i64 %163
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @out_le32(i32* %164, i32 %165)
  %167 = load i32*, i32** %7, align 8
  %168 = ptrtoint i32* %167 to i32
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* %13, align 4
  %170 = and i32 %169, -65536
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %13, align 4
  %172 = or i32 %171, 4
  store i32 %172, i32* %13, align 4
  %173 = load i32*, i32** %7, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mv64x60_pci2reg, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @mv64x60_cfg_write(i32* %173, i32 %174, i32 %175, i32 %176, i32 %182, i32 0)
  %184 = load i32*, i32** %7, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mv64x60_pci2reg, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @mv64x60_cfg_write(i32* %184, i32 %185, i32 %186, i32 %187, i32 %193, i32 %194)
  %196 = load i32, i32* %16, align 4
  %197 = and i32 %196, -2
  store i32 %197, i32* %16, align 4
  %198 = load i32*, i32** %7, align 8
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %16, align 4
  %203 = call i32 @out_le32(i32* %201, i32 %202)
  br label %204

204:                                              ; preds = %64, %56
  ret void
}

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @mv64x60_cfg_write(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
