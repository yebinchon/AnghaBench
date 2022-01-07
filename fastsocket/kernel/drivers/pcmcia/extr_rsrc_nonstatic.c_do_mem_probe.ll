; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_do_mem_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_do_mem_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, %struct.socket_data* }
%struct.socket_data = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cs: memory probe 0x%06lx-0x%06lx:\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" excluding\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" %#05lx-%#05lx\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" clean.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.pcmcia_socket*)* @do_mem_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mem_probe(i32 %0, i32 %1, %struct.pcmcia_socket* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcmcia_socket*, align 8
  %7 = alloca %struct.socket_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.pcmcia_socket* %2, %struct.pcmcia_socket** %6, align 8
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %14 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %13, i32 0, i32 2
  %15 = load %struct.socket_data*, %struct.socket_data** %14, align 8
  store %struct.socket_data* %15, %struct.socket_data** %7, align 8
  %16 = load i32, i32* @KERN_INFO, align 4
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %18 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %17, i32 0, i32 1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %20, %21
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @dev_printk(i32 %16, i32* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 131072
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %32

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 4
  %31 = and i32 %30, -8192
  br label %32

32:                                               ; preds = %28, %27
  %33 = phi i32 [ 8192, %27 ], [ %31, %28 ]
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %34, 8388608
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 8388608, i32* %12, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %40 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 2, %41
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %46 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 2, %47
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %44, %37
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %9, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %153, %49
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %53, %54
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %157

57:                                               ; preds = %51
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %93, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %76, %60
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %64, %65
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i64 @cis_readable(%struct.pcmcia_socket* %69, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %80

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %62

80:                                               ; preds = %74, %62
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %86, %87
  %89 = icmp eq i32 %85, %88
  br label %90

90:                                               ; preds = %84, %80
  %91 = phi i1 [ false, %80 ], [ %89, %84 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %90, %57
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %126

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %120, %96
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %100, %101
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %98
  %105 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i64 @checksum_match(%struct.pcmcia_socket* %105, i32 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %6, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %12, align 4
  %116 = call i64 @checksum_match(%struct.pcmcia_socket* %111, i32 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %125

119:                                              ; preds = %110, %104
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %12, align 4
  %122 = mul nsw i32 2, %121
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %9, align 4
  br label %98

125:                                              ; preds = %118, %98
  br label %126

126:                                              ; preds = %125, %93
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %152

130:                                              ; preds = %126
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %130
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %9, align 4
  %138 = sub nsw i32 %137, 1
  %139 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %136, i32 %138)
  %140 = load %struct.socket_data*, %struct.socket_data** %7, align 8
  %141 = getelementptr inbounds %struct.socket_data, %struct.socket_data* %140, i32 0, i32 0
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %8, align 4
  %145 = sub nsw i32 %143, %144
  %146 = call i32 @sub_interval(i32* %141, i32 %142, i32 %145)
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %8, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %135, %126
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %154, %155
  store i32 %156, i32* %8, align 4
  br label %51

157:                                              ; preds = %51
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %162 = call i32 (i8*, ...) @printk(i8* %161)
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %10, align 4
  %165 = sub nsw i32 %163, %164
  ret i32 %165
}

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32, i32) #1

declare dso_local i64 @cis_readable(%struct.pcmcia_socket*, i32, i32) #1

declare dso_local i64 @checksum_match(%struct.pcmcia_socket*, i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @sub_interval(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
