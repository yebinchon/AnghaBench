; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cistpl.c_pccard_validate_cis.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cistpl.c_pccard_validate_cis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no memory to validate CIS\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RETURN_FIRST_TUPLE = common dso_local global i32 0, align 4
@TUPLE_RETURN_COMMON = common dso_local global i32 0, align 4
@BIND_FN_ALL = common dso_local global i32 0, align 4
@CISTPL_DEVICE = common dso_local global i32 0, align 4
@CISTPL_CFTABLE_ENTRY = common dso_local global i32 0, align 4
@CISTPL_CFTABLE_ENTRY_CB = common dso_local global i32 0, align 4
@CISTPL_MANFID = common dso_local global i32 0, align 4
@CISTPL_VERS_1 = common dso_local global i32 0, align 4
@CISTPL_VERS_2 = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@MAX_TUPLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pccard_validate_cis(%struct.pcmcia_socket* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %14 = icmp ne %struct.pcmcia_socket* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %193

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_8__* @kmalloc(i32 12, i32 %19)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %6, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, i32* @KERN_WARNING, align 4
  %25 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %26 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %25, i32 0, i32 0
  %27 = call i32 @dev_printk(i32 %24, i32* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %193

30:                                               ; preds = %18
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.TYPE_8__* @kmalloc(i32 12, i32 %31)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %7, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = icmp eq %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = call i32 @kfree(%struct.TYPE_8__* %36)
  %38 = load i32, i32* @KERN_WARNING, align 4
  %39 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %40 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %39, i32 0, i32 0
  %41 = call i32 @dev_printk(i32 %38, i32* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %193

44:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %45 = load i32, i32* @RETURN_FIRST_TUPLE, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @TUPLE_RETURN_COMMON, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %52 = load i32, i32* @BIND_FN_ALL, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = call i32 @pccard_get_first_tuple(%struct.pcmcia_socket* %51, i32 %52, %struct.TYPE_8__* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %182

58:                                               ; preds = %44
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CISTPL_DEVICE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %78, label %64

64:                                               ; preds = %58
  %65 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %66 = load i32, i32* @BIND_FN_ALL, align 4
  %67 = load i32, i32* @CISTPL_CFTABLE_ENTRY, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = call i32 @pccard_read_tuple(%struct.pcmcia_socket* %65, i32 %66, i32 %67, %struct.TYPE_8__* %68)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %73 = load i32, i32* @BIND_FN_ALL, align 4
  %74 = load i32, i32* @CISTPL_CFTABLE_ENTRY_CB, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = call i32 @pccard_read_tuple(%struct.pcmcia_socket* %72, i32 %73, i32 %74, %struct.TYPE_8__* %75)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71, %64, %58
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %78, %71
  %82 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %83 = load i32, i32* @BIND_FN_ALL, align 4
  %84 = load i32, i32* @CISTPL_MANFID, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = call i32 @pccard_read_tuple(%struct.pcmcia_socket* %82, i32 %83, i32 %84, %struct.TYPE_8__* %85)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %81
  %89 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %90 = load i32, i32* @BIND_FN_ALL, align 4
  %91 = load i32, i32* @CISTPL_VERS_1, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = call i32 @pccard_read_tuple(%struct.pcmcia_socket* %89, i32 %90, i32 %91, %struct.TYPE_8__* %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %88
  %96 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %97 = load i32, i32* @BIND_FN_ALL, align 4
  %98 = load i32, i32* @CISTPL_VERS_2, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = call i32 @pccard_read_tuple(%struct.pcmcia_socket* %96, i32 %97, i32 %98, %struct.TYPE_8__* %99)
  %101 = load i32, i32* @ENOSPC, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp ne i32 %100, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %95, %88, %81
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %104, %95
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  br label %182

114:                                              ; preds = %110, %107
  store i32 1, i32* %8, align 4
  br label %115

115:                                              ; preds = %161, %114
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @MAX_TUPLES, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %164

119:                                              ; preds = %115
  %120 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %121 = load i32, i32* @BIND_FN_ALL, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %123 = call i32 @pccard_get_next_tuple(%struct.pcmcia_socket* %120, i32 %121, %struct.TYPE_8__* %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %164

127:                                              ; preds = %119
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %130, 35
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %135, 64
  br i1 %136, label %157, label %137

137:                                              ; preds = %132, %127
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %140, 71
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %145, 128
  br i1 %146, label %157, label %147

147:                                              ; preds = %142, %137
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp sgt i32 %150, 144
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %155, 255
  br i1 %156, label %157, label %160

157:                                              ; preds = %152, %142, %132
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %160

160:                                              ; preds = %157, %152, %147
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %8, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %115

164:                                              ; preds = %126, %115
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @MAX_TUPLES, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %180, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %10, align 4
  %170 = icmp sgt i32 %169, 5
  br i1 %170, label %180, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %174, %171
  %178 = load i32, i32* %8, align 4
  %179 = icmp ugt i32 %178, 10
  br i1 %179, label %180, label %181

180:                                              ; preds = %177, %168, %164
  store i32 0, i32* %8, align 4
  br label %181

181:                                              ; preds = %180, %177, %174
  br label %182

182:                                              ; preds = %181, %113, %57
  %183 = load i32*, i32** %5, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32, i32* %8, align 4
  %187 = load i32*, i32** %5, align 8
  store i32 %186, i32* %187, align 4
  br label %188

188:                                              ; preds = %185, %182
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %190 = call i32 @kfree(%struct.TYPE_8__* %189)
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %192 = call i32 @kfree(%struct.TYPE_8__* %191)
  store i32 0, i32* %3, align 4
  br label %193

193:                                              ; preds = %188, %35, %23, %15
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local %struct.TYPE_8__* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

declare dso_local i32 @pccard_get_first_tuple(%struct.pcmcia_socket*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @pccard_read_tuple(%struct.pcmcia_socket*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @pccard_get_next_tuple(%struct.pcmcia_socket*, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
