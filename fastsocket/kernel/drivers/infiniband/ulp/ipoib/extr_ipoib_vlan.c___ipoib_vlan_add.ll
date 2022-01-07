; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_vlan.c___ipoib_vlan_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_vlan.c___ipoib_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, %struct.TYPE_12__*, i32, i32, %struct.TYPE_12__*, i32, %struct.TYPE_13__*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@IPOIB_FLAG_SUBINTERFACE = common dso_local global i32 0, align 4
@INFINIBAND_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"failed to initialize subinterface: device %s, port %d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to initialize; error %i\00", align 1
@IPOIB_LEGACY_CHILD = common dso_local global i32 0, align 4
@dev_attr_parent = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ipoib_vlan_add(%struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  %7 = alloca %struct.ipoib_dev_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %6, align 8
  store %struct.ipoib_dev_priv* %1, %struct.ipoib_dev_priv** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %12 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %11, i32 0, i32 11
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %15 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %14, i32 0, i32 11
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %17 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IPOIB_UD_MTU(i32 %18)
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %21 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %20, i32 0, i32 2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 5
  store i32 %19, i32* %23, align 8
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %30 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %32 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %31, i32 0, i32 10
  store i32 %28, i32* %32, align 8
  %33 = load i32, i32* @IPOIB_FLAG_SUBINTERFACE, align 4
  %34 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %35 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %34, i32 0, i32 8
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  %37 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %38 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %39 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %38, i32 0, i32 7
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = call i32 @ipoib_set_dev_features(%struct.ipoib_dev_priv* %37, %struct.TYPE_13__* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  br label %188

45:                                               ; preds = %4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %48 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %50 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %49, i32 0, i32 2
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %55 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %54, i32 0, i32 2
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @INFINIBAND_ALEN, align 4
  %60 = call i32 @memcpy(i32 %53, i32 %58, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %61, 8
  %63 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %64 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %63, i32 0, i32 2
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  store i32 %62, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 255
  %71 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %72 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %71, i32 0, i32 2
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 9
  store i32 %70, i32* %76, align 4
  %77 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %78 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %77, i32 0, i32 2
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %81 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %80, i32 0, i32 7
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %84 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ipoib_dev_init(%struct.TYPE_12__* %79, %struct.TYPE_13__* %82, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %45
  %90 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %91 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %92 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %91, i32 0, i32 7
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %97 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %90, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %98)
  br label %188

100:                                              ; preds = %45
  %101 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %102 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %101, i32 0, i32 2
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = call i32 @register_netdevice(%struct.TYPE_12__* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  br label %183

111:                                              ; preds = %100
  %112 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %113 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %112, i32 0, i32 2
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %116 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %115, i32 0, i32 5
  store %struct.TYPE_12__* %114, %struct.TYPE_12__** %116, align 8
  %117 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %118 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %117, i32 0, i32 2
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = call i32 @ipoib_create_debug_files(%struct.TYPE_12__* %119)
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @IPOIB_LEGACY_CHILD, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %154

124:                                              ; preds = %111
  %125 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %126 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %125, i32 0, i32 2
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = call i64 @ipoib_cm_add_mode_attr(%struct.TYPE_12__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %172

131:                                              ; preds = %124
  %132 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %133 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %132, i32 0, i32 2
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = call i64 @ipoib_add_pkey_attr(%struct.TYPE_12__* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %172

138:                                              ; preds = %131
  %139 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %140 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %139, i32 0, i32 2
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = call i64 @ipoib_add_umcast_attr(%struct.TYPE_12__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %172

145:                                              ; preds = %138
  %146 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %147 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %146, i32 0, i32 2
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 3
  %150 = call i64 @device_create_file(i32* %149, i32* @dev_attr_parent)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %172

153:                                              ; preds = %145
  br label %154

154:                                              ; preds = %153, %111
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %157 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %159 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %158, i32 0, i32 2
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %164 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %163, i32 0, i32 2
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  store i32 %162, i32* %166, align 4
  %167 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %168 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %167, i32 0, i32 4
  %169 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %170 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %169, i32 0, i32 3
  %171 = call i32 @list_add_tail(i32* %168, i32* %170)
  store i32 0, i32* %5, align 4
  br label %190

172:                                              ; preds = %152, %144, %137, %130
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %10, align 4
  %175 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %176 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %175, i32 0, i32 2
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = call i32 @ipoib_delete_debug_files(%struct.TYPE_12__* %177)
  %179 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %180 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %179, i32 0, i32 2
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = call i32 @unregister_netdevice(%struct.TYPE_12__* %181)
  br label %183

183:                                              ; preds = %172, %107
  %184 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %7, align 8
  %185 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %184, i32 0, i32 2
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  %187 = call i32 @ipoib_dev_cleanup(%struct.TYPE_12__* %186)
  br label %188

188:                                              ; preds = %183, %89, %44
  %189 = load i32, i32* %10, align 4
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %188, %154
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @IPOIB_UD_MTU(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ipoib_set_dev_features(%struct.ipoib_dev_priv*, %struct.TYPE_13__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ipoib_dev_init(%struct.TYPE_12__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, ...) #1

declare dso_local i32 @register_netdevice(%struct.TYPE_12__*) #1

declare dso_local i32 @ipoib_create_debug_files(%struct.TYPE_12__*) #1

declare dso_local i64 @ipoib_cm_add_mode_attr(%struct.TYPE_12__*) #1

declare dso_local i64 @ipoib_add_pkey_attr(%struct.TYPE_12__*) #1

declare dso_local i64 @ipoib_add_umcast_attr(%struct.TYPE_12__*) #1

declare dso_local i64 @device_create_file(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ipoib_delete_debug_files(%struct.TYPE_12__*) #1

declare dso_local i32 @unregister_netdevice(%struct.TYPE_12__*) #1

declare dso_local i32 @ipoib_dev_cleanup(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
